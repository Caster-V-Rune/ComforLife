"use strict";
var FullSlideOptions = (function () {
    function FullSlideOptions(options) {
        this.cyclic = false;
        this.cyclic0 = false;
        this.cyclic1 = false;
        // TODO: horizontal sliding is not fully supported
        this.direction = 'vertical';
        this.numberOfSections = 3;
        this.timingFunction = 'ease-in-out';
        this.transitionTime = '400';
        this.hasScrollEvent = true;
        this.scrollReversed = true;
        this.hasTouchEvent = true;
        this.slideStart = function () { };
        if (options) {
            $.extend(this, options);
        }
    }
    return FullSlideOptions;
})();
//
// instance variables:
//
//	element: $(element),
//	options: { }, used as dict, from arg options,
//
//	currentIndex: int,
//	numberOfSections: int
//	inAnimation: bool
//
// events:
//	in:
//		* fslide-next
//		* fslide-prev
//		* fslide-to idx
//
//	out:
//		* fslide-start from to
//
var FullSlide = (function () {
    function FullSlide(element, options) {
        this.element = $(element);
        this.options = new FullSlideOptions(options);
        this.currentIndex = 0;
        this.numberOfSections = this.options.numberOfSections;
        this.inAnimation = false;
        var that = this;
        this.element.bind({
            'fslide-next': function (e) {
                that.next();
                e.stopPropagation();
            },
            'fslide-prev': function (e) {
                that.prev();
                e.stopPropagation();
            },
            'fslide-to': function (e, idx) {
                that.slideTo(parseInt(idx));
                e.stopPropagation();
            }
        });
        // TODO: do not hardcode unit of transitionTime to ms.
        this.element.css({
            '-webkit-transition': "-webkit-transform " + this.options.transitionTime + "ms " + this.options.timingFunction,
            'transition': "transform " + this.options.transitionTime + "ms " + this.options.timingFunction
        });
        this.element.bind({
            'transitionend': function (e) {
                if (e.originalEvent.propertyName == 'transform') {
                    that.inAnimation = false;
                }
            }
        });
        this.element.bind('mousewheel DOMMouseScroll', function (e) {
            e.preventDefault();
        });
        if (this.options.hasScrollEvent) {
            this._bindScroll();
        }
        if (this.options.hasTouchEvent) {
            this._bindTouch();
        }
    }
    FullSlide.prototype.next = function () {
        if (this.currentIndex < this.numberOfSections - 1) {
            this.slideTo(this.currentIndex + 1);
        }
        else if (this.options.cyclic0 || this.options.cyclic) {
            this.slideTo(0);
        }
    };
    FullSlide.prototype.prev = function () {
        if (this.currentIndex > 0) {
            this.slideTo(this.currentIndex - 1);
        }
        else if (this.options.cyclic1 || this.options.cyclic) {
            this.slideTo(this.numberOfSections - 1);
        }
    };
    FullSlide.prototype.slideTo = function (index) {
        this.options.slideStart.call(this.element, this.currentIndex, index);
        this.element.trigger('fslide-start', [
            this.currentIndex, index]);
        var percent = -index * 100;
        var transform_css = '';
        if (this._isVertical()) {
            transform_css = "translate3d(0, " + percent + "%, 0)";
        }
        else {
            transform_css = "translate3d(" + percent + "%, 0, 0)";
        }
        this.element.css({
            'transform': transform_css,
            '-webkit-transform': transform_css });
        this.currentIndex = index;
        this.inAnimation = true;
    };
    FullSlide.prototype._isVertical = function () {
        return this.options.direction === 'vertical';
    };
    FullSlide.prototype._bindScroll = function () {
        var that = this;
        this.element.bind('mousewheel DOMMouseScroll', function (e) {
            if (!that.inAnimation) {
                var delta = e.originalEvent.wheelDelta; // || -(<MouseWheelEvent>e.originalEvent).detail;
                if (!that.options.scrollReversed) {
                    if (delta < 0) {
                        that.next();
                    }
                    else {
                        that.prev();
                    }
                }
                else {
                    if (delta < 0) {
                        that.prev();
                    }
                    else {
                        that.next();
                    }
                }
            }
        });
    };
    FullSlide.prototype._bindTouch = function () {
        var that = this;
        this.element.each(function () {
            var startX = 0;
            var startY = 0;
            ;
            // T0D0: problem of scrolling multiple times.
            //	151129 EVE: solved?
            function onTouchstart(e) {
                var t = e.originalEvent.touches;
                if (t && t.length) {
                    t = t[0];
                    startX = t.pageX, startY = t.pageY;
                    that.element.unbind('touchmove', onTouchmove);
                    that.element.bind('touchmove', onTouchmove);
                }
            }
            function onTouchmove(e) {
                var t = e.originalEvent.touches;
                if (t && t.length) {
                    var t0 = t[0];
                    var deltaX = startX - t0.pageX;
                    var deltaY = startY - t0.pageY;
                    if (deltaX >= 50) {
                        if (!that._isVertical()) {
                            that.next();
                        }
                    }
                    if (deltaX <= -50) {
                        if (!that._isVertical()) {
                            that.prev();
                        }
                    }
                    if (deltaY >= 50) {
                        if (that._isVertical()) {
                            that.next();
                        }
                    }
                    if (deltaY <= -50) {
                        if (that._isVertical()) {
                            that.prev();
                        }
                    }
                    if (Math.abs(deltaX) >= 50 || Math.abs(deltaY) >= 50) {
                        that.element.unbind('touchmove', onTouchmove);
                    }
                    e.preventDefault();
                }
            }
            that.element.bind('touchstart', onTouchstart);
        });
    };
    return FullSlide;
})();
((function ($) {
    $.fn.fullSlide = function (options) {
        return this.each(function () {
            $.data(this, "plugin_fullSlide", new FullSlide(this, options));
        });
    };
})(jQuery));

var ImageScaleOption = (function () {
    function ImageScaleOption(options) {
        this.scale = [2., 2.];
        this.autoScale = false;
        if (options) {
            $.extend(this, options);
        }
    }
    return ImageScaleOption;
})();
var ImageScaleRect = (function () {
    function ImageScaleRect(center, size) {
        this.centerX = center[0];
        this.centerY = center[1];
        this.width = size[0];
        this.height = size[1];
    }
    Object.defineProperty(ImageScaleRect.prototype, "left", {
        get: function () {
            return this.centerX - this.width / 2;
        },
        set: function (l) {
            this.centerX += (l - this.left);
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ImageScaleRect.prototype, "right", {
        get: function () {
            return this.centerX + this.width / 2;
        },
        set: function (r) {
            this.centerX += (r - this.right);
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ImageScaleRect.prototype, "top", {
        get: function () {
            return this.centerY - this.height / 2;
        },
        set: function (t) {
            this.centerY += (t - this.top);
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ImageScaleRect.prototype, "bottom", {
        get: function () {
            return this.centerY + this.height / 2;
        },
        set: function (b) {
            this.centerY += (b - this.bottom);
        },
        enumerable: true,
        configurable: true
    });
    ImageScaleRect.prototype.clone = function () {
        return new ImageScaleRect([this.centerX, this.centerY], [this.width, this.height]);
    };
    ImageScaleRect.prototype._scaleCenter = function (sx, sy) {
        this.width *= sx, this.height *= sy;
        return this;
    };
    ImageScaleRect.prototype.scaleCenter = function (sx, sy) {
        if (sy === undefined) {
            if (typeof sx === 'object') {
                return this._scaleCenter(sx[0], sx[1]);
            }
            else if (typeof sx === 'number') {
                return this._scaleCenter(sx, sx);
            }
        }
        if (typeof sx === 'number' && typeof sy === 'number') {
            return this._scaleCenter(sx, sy);
        }
    };
    return ImageScaleRect;
})();
var ImageScale = (function () {
    function ImageScale(target, sourcediv, options) {
        this.sourcediv = sourcediv;
        this.options = ImageScale.sanitizeOption(options);
        if (this.options['target'] === undefined) {
            this.options['target'] = target;
        }
        this.srcimg = sourcediv.children('img');
        this.options['target'].on('hover', function () {
        });
        this.srcimg.on('mousemove', this.eventMouseMoveSource.bind(this));
        this.syncImage();
    }
    ImageScale.sanitizeOption = function (src) {
        var options = new ImageScaleOption(src);
        if ((options.scaleX !== undefined) &&
            (options.scaleY !== undefined)) {
            options.scale = [options.scaleX, options.scaleY];
        }
        options['scaleInv'] = [1. / options['scale'][0],
            1. / options['scale'][1]];
        return options;
    };
    ImageScale.prototype.syncImage = function () {
        if (this.options['autoScale']) {
            var i = this.srcimg[0];
            this.options['scale'] = [i.naturalWidth / this.srcimg.width(),
                i.naturalHeight / this.srcimg.height()];
            this.options['scaleInv'] = [1. / this.options['scale'][0],
                1. / this.options['scale'][1]];
        }
        this.options['target'].css('background', "url(" + this.srcimg.attr('src') + ") no-repeat");
    };
    ImageScale.prototype.eventMouseMoveSource = function (e) {
        var offset = this.srcimg.offset();
        var sw = this.srcimg.width(), sh = this.srcimg.height();
        var tw = this.options['target'].width(), th = this.options['target'].height();
        var rrect = new ImageScaleRect([e.pageX - offset.left, e.pageY - offset.top], [tw, th])
            .scaleCenter(this.options['scaleInv']);
        if (rrect.left < 0) {
            rrect.left = 0;
        }
        if (rrect.right > sw) {
            rrect.right = sw;
        }
        if (rrect.top < 0) {
            rrect.top = 0;
        }
        if (rrect.bottom > sh) {
            rrect.bottom = sh;
        }
        if (this.options['moveOverlay']) {
            var m = this.options['moveOverlay'];
            var mw = m.width(), mh = m.height();
            m.css({
                'left': rrect.centerX - mw / 2,
                'top': rrect.centerY - mh / 2,
            });
        }
        if (this.options['moveCallback']) {
            this.options['moveCallback'](rrect);
        }
        this.options['target'].css('backgroundPosition', "-" + rrect.left * this.options.scale[0] + "px -" + rrect.top * this.options.scale[1] + "px");
    };
    return ImageScale;
})();
((function ($) {
    // TODO: seems not a good API
    $.fn.imageScaleFrom = function (source, options) {
        return this.each(function () {
            $.data(this, "plugin_imageScale", new ImageScale($(this), source, options));
        });
    };
    $.fn.imageScaleTo = function (target, options) {
        return this.each(function () {
            $.data(this, "plugin_imageScale", new ImageScale(target, $(this), options));
        });
    };
    $.fn.imageScale = function (options) {
        return this.each(function () {
            $.data(this, "plugin_imageScale", new ImageScale(undefined, $(this), options));
        });
    };
    $.fn.imageScaleUpdate = function () {
        return this.each(function () {
            $.data(this, "plugin_imageScale").syncImage();
        });
    };
})(jQuery));

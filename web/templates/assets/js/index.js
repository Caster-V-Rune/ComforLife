/**
 * Created by rune on 3/4/16.
 */

$(function() {
    var searchchange = function (x, s) {
        $('#search').attr('placeholder', s);
        $('.sanjiao').css("marginLeft", x+'px');
    };
    function getPageSize() {
        var xScroll, yScroll;
        if (window.innerHeight && window.scrollMaxY) {
            xScroll = window.innerWidth + window.scrollMaxX;
            yScroll = window.innerHeight + window.scrollMaxY;
        } else {
            if (document.body.scrollHeight > document.body.offsetHeight) { // all but Explorer Mac
                xScroll = document.body.scrollWidth;
                yScroll = document.body.scrollHeight;
            } else { // Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari
                xScroll = document.body.offsetWidth;
                yScroll = document.body.offsetHeight;
            }
        }
        var windowWidth, windowHeight;
        if (self.innerHeight) { // all except Explorer
            if (document.documentElement.clientWidth) {
                windowWidth = document.documentElement.clientWidth;
            } else {
                windowWidth = self.innerWidth;
            }
            windowHeight = self.innerHeight;
        } else {
            if (document.documentElement && document.documentElement.clientHeight) { // Explorer 6 Strict Mode
                windowWidth = document.documentElement.clientWidth;
                windowHeight = document.documentElement.clientHeight;
            } else {
                if (document.body) { // other Explorers
                    windowWidth = document.body.clientWidth;
                    windowHeight = document.body.clientHeight;
                }
            }
        }
        // for small pages with total height less then height of the viewport
        if (yScroll < windowHeight) {
            pageHeight = windowHeight;
        } else {
            pageHeight = yScroll;
        }
        // for small pages with total width less then width of the viewport
        if (xScroll < windowWidth) {
            pageWidth = xScroll;
        } else {
            pageWidth = windowWidth;
        }
        arrayPageSize = new Array(pageWidth, pageHeight, windowWidth, windowHeight);
        return arrayPageSize;
    }
    $('#maixinfang').mouseenter(function () {
        searchchange(30, '买新房');
        $('#maixinfang').addClass('cur');
        $('#zhaozufang').removeClass('cur');
        $('#maiershoufang').removeClass('cur');
    });
    $('#zhaozufang').mouseenter(function () {
        searchchange(110, '找租房');
        $('#zhaozufang').addClass('cur');
        $('#maixinfang').removeClass('cur');
        $('#maiershoufang').removeClass('cur');
    });
    $('#maiershoufang').mouseenter(function () {
        searchchange(195, '买二手房');
        $('#maiershoufang').addClass('cur');
        $('#zhaozufang').removeClass('cur');
        $('#maixinfang').removeClass('cur');
    });
    $(function(){
        $('.first-page').css('height',$(window).height());
        $('.first-page').css('width',$(window).width());
        $('.arrow-down').css('top', $(window).height()*0.8);
        $('.arrow-down').css('left', $(window).width()*0.05);
    });
    $(window).resize(function(){
        $('.first-page').css('height',$(window).height());
        $('.first-page').css('width',$(window).width());
        $('.arrow-down').css('top', $(window).height()*0.8);
        $('.arrow-down').css('left', $(window).width()*0.05);
    });
    $('.tlist').scrollspy({});
});
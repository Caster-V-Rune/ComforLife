/**
 * Created by rune on 3/6/16.
 */
$(function(){
    $('.scrollspy').scrollspy({ target: '#information-navbar' });
    $('.scrollspy').css('height',$(window).height()-$('#information-navbar').height());
    $(window).resize(function(){
        $('.scrollspy').css('height',$(window).height()-$('#information-navbar').height());
    });
});

/**
 * Created by rune on 3/12/16.
 */
$(function(){
    var wait = 60;
    function time() {
        if (wait == 0) {
            $('.check-btn').removeAttr("disabled");
            $('.check-btn').html("發送驗證碼");
            wait = 60;
        } else {
            $('.check-btn').attr("disabled", "disabled");
            $('.check-btn').html("重新發送(" + wait + ")");
            wait--;
            setTimeout(function() {
                    time()
                },
                1000)
        }
    }
    $('.check-btn').on('click', function(){
        var username = $('input#semail').val();
        $.ajax({
            type: 'POST',
            url: '',
            data: {
                username: username
            },
            success: function(){
                time();
            },

        });
    });
});
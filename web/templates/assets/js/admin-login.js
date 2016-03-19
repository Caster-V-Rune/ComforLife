/**
 * Created by rune on 3/19/16.
 */
$(function(){
    $('#btn').on('click', function(){
        var e = $('#exampleInputEmail1').val();
        var p = $('#exampleInputPassword1').val();
        if (e=='admin' && p=='admin'){
            window.location='';
        }
        else{
            alert('error');
            return false;
        }
    })
})
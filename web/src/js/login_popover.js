$(function () {

    var $popusername = $('#username').popover({
        trigger: 'hover',
        placement: 'right',
        content: '8-20 znakow, przynajmniej jedna liczba i znak specjalny'
     });
    var $popassword = $('#password').popover({
        trigger: 'hover',
        placement: 'right',
        content: '8-30 znakow, przynajmniej jedna liczba i znak specjalny'
    });
});

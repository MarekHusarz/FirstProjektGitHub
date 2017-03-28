/**
 * Created by Lenovo on 2017-03-17.
 */
var app = angular.module('myApp', []);
var number = /[1-9]/; // musi zawierać liczbe
var letter = /[a-zA-Z]/;
var space = /[\s]/;
var special = /[!@#$%^&*]/;
var otherKey = /[^!@#$%^&*1-9a-zA-Z\s]/;
var emile = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

app.controller('myCtrl', function ($scope) {

    $('#userName').popover({
        html: true,
        container: 'body',
        content: function () {
            return $('#popOverUserName').html();
        }
    }).blur(function () {
        $(this).popover('hide');
    }).on('keyup click', function () {
        var text = document.getElementById("userName").value;
        var spaceTest = (space.test(text) === true);
        var letterTest = (letter.test(text) === true);
        var numberTest = (number.test(text) === true);
        var specialTest = (special.test(text) === true);
        var otherKeyTest = (otherKey.test(text) === false);
        if (true) {
            if (spaceTest) {
                $('.popover-content #spaceValid').removeClass('validy').addClass('invalidy');
            }
            else {
                $('.popover-content #spaceValid').removeClass('invalidy').addClass('validy');
            }
            if (otherKeyTest || text.length == 0) {
                $('.popover-content #otherKeyValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #otherKeyValid').removeClass('validy').addClass('invalidy');
            }
            if (text.length > 8) {
                $('.popover-content #minValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #minValid').removeClass('validy').addClass('invalidy');
            }
            if (text.length < 20) {
                $('.popover-content #maxValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #maxValid').removeClass('validy').addClass('invalidy');
            }
            if (letterTest) {
                $('.popover-content #letterValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #letterValid').removeClass('validy').addClass('invalidy');
            }
            if (numberTest) {
                $('.popover-content #numberValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #numberValid').removeClass('validy').addClass('invalidy');
            }
            if (specialTest) {
                $('.popover-content #specialValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #specialValid').removeClass('validy').addClass('invalidy');
            }
        }   // walidacja
    });

    $('#password').popover({
        html: true,
        container: 'body',
        content: function () {
            return $('#popOverUserName').html();
        }
    }).blur(function () {
        $(this).popover('hide');
    }).on('keyup click', function () {
        var text = document.getElementById("password").value;
        var spaceTest = (space.test(text) === true);
        var letterTest = (letter.test(text) === true);
        var numberTest = (number.test(text) === true);
        var specialTest = (special.test(text) === true);
        var otherKeyTest = (otherKey.test(text) === false);
        if (true) {
            if (spaceTest) {
                $('.popover-content #spaceValid').removeClass('validy').addClass('invalidy');
            }
            else {
                $('.popover-content #spaceValid').removeClass('invalidy').addClass('validy');
            }
            if (otherKeyTest || text.length == 0) {
                $('.popover-content #otherKeyValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #otherKeyValid').removeClass('validy').addClass('invalidy');
            }
            if (text.length > 8) {
                $('.popover-content #minValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #minValid').removeClass('validy').addClass('invalidy');
            }
            if (text.length < 20) {
                $('.popover-content #maxValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #maxValid').removeClass('validy').addClass('invalidy');
            }
            if (letterTest) {
                $('.popover-content #letterValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #letterValid').removeClass('validy').addClass('invalidy');
            }
            if (numberTest) {
                $('.popover-content #numberValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #numberValid').removeClass('validy').addClass('invalidy');
            }
            if (specialTest) {
                $('.popover-content #specialValid').removeClass('invalidy').addClass('validy');
            }
            else {
                $('.popover-content #specialValid').removeClass('validy').addClass('invalidy');
            }
        }   // walidacja
    });

})
;

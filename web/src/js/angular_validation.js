/**
 * Created by Lenovo on 2017-03-17.
 */
var app = angular.module('myApp', []);
var number = /[1-9]/; // musi zawierać liczbe
var letter = /[a-z A-Z]/;
var space = /[\s]/;
app.controller('myCtrl', function ($scope) {
    var $popusername = $("#ousername_popover").popover({
        trigger: 'hover',
        placement: 'left',
        content: ''
    });
    $("#username").keyup(function () {
        var text = document.getElementById("username").value;
        var spaceTest = (space.test(text) === true);
        var letterTest = (letter.test(text) === false);
        var numberTest = (number.test(text) === false);
        if (spaceTest && text.length > 0) {
            $("#ousername_popover").attr('data-content', 'niedozwolony znak spacji ');
            $("#ousername_popover").popover('show');
        }
        else if (text.length < 8 && text.length > 0) {
            $("#ousername_popover").attr('data-content', 'Zbyt krótki login');
            $("#ousername_popover").popover('show');
        }
        else if (text.length > 20) {
            $("#ousername_popover").attr('data-content', 'Zbyt długi login');
            $("#ousername_popover").popover('show');
        }
        else if (letterTest && text.length > 0) {
            $("#ousername_popover").attr('data-content', 'Brak litert');
            $("#ousername_popover").popover('show');
        }
        else if (numberTest && text.length > 0) {
            $("#ousername_popover").attr('data-content', 'Brak liczby');
            $("#ousername_popover").popover('show');
        }
        else {
            $("#ousername_popover").attr('data-content', '');
            $("#ousername_popover").popover('hide');
        }
    });
});

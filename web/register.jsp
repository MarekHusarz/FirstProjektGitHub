<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 24/10/2016
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Projekt_1</title>
    <% if (session.getAttribute("currentSessionUser") != null) {
        response.sendRedirect("Index.jsp");
    } %>
    <link rel="stylesheet" type="text/css" href="src/css/register.css">
    <link rel="stylesheet" type="text/css" href="src/css/popover_registration.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900&subset=latin-ext" rel="stylesheet">
    <script src="src/js/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <script type="text/javascript" src="src/js/SelectCoutry.js"></script>
    <script type="text/javascript" src="src/js/login_popover.js"></script>
    <script type="text/javascript" src="src/js/angular_validation.js"></script>
    <script type="text/javascript" src="src/js/dobPicker.js"></script>

</head>
<body>


<div id="container">
    <div id="loginform" data-ng-app="myApp" data-ng-controller="myCtrl">
        <form action="/register" method="post">
            <span id="ousername_popover">
                <input id="userName" type="text" oninput="LoginValid()"
                       name="username" placeholder="Login" onfocus="this.placeholder=' '"
                       onblur="this.placeholder='Login' ">
            </span>
            <span id="password_popover">
                <input id="password" type="password" name="haslo" placeholder="Hasło" onfocus="this.placeholder=' ' "
                       onblur="this.placeholder='Hasło' ">
            </span>
            <input id="password1" type="password" name="haslo1" placeholder="Powtórz Hasło"
                   onfocus="this.placeholder=' ' "
                   onblur="this.placeholder='Powtórz Hasło' ">
            <input id="emile" type="text" name="emile" placeholder="E-mail" onfocus="this.placeholder=' ' "
                   onblur="this.placeholder='E-mail' ">
            <input id="phone" type="text" name="phone" placeholder="Telefon" onfocus="this.placeholder=' ' "
                   onblur="this.placeholder='Telefon' ">
            <span id="selectjs"></span>
            <script language="javascript">
                populateCountries();
            </script>
            <div id="formdiv">Data Urodzenia:</div>
            <select id="dobday"></select>
            <select id="dobmonth"></select>
            <select id="dobyear"></select>
            <script>
                $(document).ready(function () {
                    $.dobPicker({
                        daySelector: '#dobday', /* Required */
                        monthSelector: '#dobmonth', /* Required */
                        yearSelector: '#dobyear', /* Required */
                    });
                });
            </script>
            <input type="submit" value="Rejestracja">
        </form>
    </div>
</div>

<div id="popOverUserName">

    <span id="spaceValid" class="validy">   </span>Brak znaku spacji<br/>
    <span id="letterValid" class="invalidy">   </span>Litery<br/>
    <span id="numberValid" class="invalidy">   </span>Liczby<br/>
    <span id="specialValid" class="invalidy">   </span>Znaki specjalne<br/>
    <span id="otherKeyValid" class="validy">   </span>Niedozwolone znaki<br/>
    <span id="minValid" class="invalidy">   </span>Min 8 znakow<br/>
    <span id="maxValid" class="validy">   </span>Max 20 znakow<br/>

</div>
</body>
</html>
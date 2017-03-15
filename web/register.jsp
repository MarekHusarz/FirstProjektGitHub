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
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900&subset=latin-ext" rel="stylesheet">
    <script type="text/javascript" src="src/js/SelectCoutry.js"></script>
    <script src="src/js/jquery-1.11.1.min.js"></script>
    <script src="src/js/dobPicker.js"></script>


</head>
<body>


<div id="container">
    <div id="login">
        <form action="/register" method="post">
            <input id="username" type="text" oninput="LoginValid()" name="  username" placeholder="Login"
                   onfocus="this.placeholder=' '" onblur="this.placeholder='Login' ">
            <input type="password" name="haslo" placeholder="Hasło" onfocus="this.placeholder=' ' "
                   onblur="this.placeholder='Hasło' ">
            <input type="password" name="haslo1" placeholder="Powtórz Hasło" onfocus="this.placeholder=' ' "
                   onblur="this.placeholder='Powtórz Hasło' ">
            <input type="text" name="emile" placeholder="E-mail" onfocus="this.placeholder=' ' "
                   onblur="this.placeholder='E-mail' ">
            <input type="text" name="phone" placeholder="Telefon" onfocus="this.placeholder=' ' "
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
</body>
</html>
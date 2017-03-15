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
    <link rel="stylesheet" type="text/css" href="src/css/logIn.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900&subset=latin-ext" rel="stylesheet">

</head>
<body>

<div id="container">
    <div id="login">
        <form  method="post">
            <input type="text" name="login" placeholder="login" onfocus="this.placeholder=' ' "
                   onblur="this.placeholder='login' ">
            <input type="password" name="haslo" placeholder="hasło" onfocus="this.placeholder=' ' "
                   onblur="this.placeholder='hasło' ">
            <input type="submit" name value="Logowanie" formaction="/login">
            <input type="submit" value="Rejestracja" formaction="register.jsp">
        </form>
    </div>
</div>
</body>

</html>

<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2017-02-15
  Time: 12:31
  To change this template use File | Settings | File Templates.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pl">
<head>

    <% if (session.getAttribute("currentSessionUser") == null) {
        response.sendRedirect("LogIn.jsp");
    } %>
	nie ma tego 
    <meta charset="utf-8"/>
    <title>Marek Husarz</title>
    <meta name="description" content="Strona www"/>
    <meta name="keywords" content="example, przyklad/">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <link rel="stylesheet" href="src/css/index_one.css"/>
    <link rel="stylesheet" href="src/css/bjqs.css"/>
    <script type="text/javascript" src="src/js/timer.js"></script>
    <script src="src/js/jquery-1.11.1.min.js"></script>
    <script src="src/js/bjqs-1.3.min.js"></script>
    <script src="src/js/jquery.secret-source.min.js"></script>


    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900&subset=latin-ext" rel="stylesheet">

</head>

<body onload="odliczanie();">
<div id="wraper">
    <div id="header">
        <div id="logodiv">
            <div id="logo">Marek Husarz</div>
            <div id="zegar"></div>
            <div id="logout">
                <form action="/logout" method="post">
                    <input type="submit" value="Wyloguj">
                </form>
            </div>
            <div style="clear: both;"></div>
        </div>
    </div>
    <div id="naw">
        <ul id="menu">
            <li><a href="#">Strona główna</a></li>
            <li>Ulubione filmy
                <ul>
                    <li><a href="#">Władca Pierścieni</a></li>
                    <li><a href="#">Missionimpasible</a></li>
                    <li><a href="#">Piraci z Karaibów</a></li>
                </ul>
            </li>
            <li>Gitary
                <ul>
                    <li><a href="#">Klasyczne</a></li>
                    <li><a href="#">Elektryczne</a></li>
                    <li><a href="#">basowe</a>T</li>
                </ul>
            </li>
            <li>Radmor
                <ul>
                    <li><a href="#">Zdjęcia</a></li>
                    <li><a href="#">Schematy</a>.</li>
                    <li><a href="#">Plany</a></li>
                </ul>
            </li>
            <li>Moje projekty
                <ul>
                    <li><a href="#">MP3</a></li>
                    <li><a href="#">Christmas_Light</a></li>
                    <li><a href="#">Rower</a></li>
                    <li><a href="#">Karty_do_gry</a></li>
                </ul>
            </li>
            <li><a href="#">Autorzy</a></li>
        </ul>
    </div>
    <div id="slider">
        <div id="banner-slide">
            <!-- start Basic Jquery Slider -->
            <ul class="bjqs">
                <li><img src="src/img/01.jpg" title="Radmor 5102 "></li>
                <li><img src="src/img/02.jpg" title="Gitara Elektryczna"></li>
                <li><img src="src/img/03.jpg" title="Piraci z Karaibów"></li>
            </ul>
            <!-- end Basic jQuery Slider -->
        </div>
        <!-- End outer wrapper -->
    </div>
    <!-- attach the plug-in to the slider parent element and adjust the settings as required -->
    <script class="secret-source">
        jQuery(document).ready(function ($) {

            $('#banner-slide').bjqs({
                animtype: 'slide',
                height: 500,
                width: 901,
                responsive: true,
                randomstart: true
            });

        });
    </script>


    <div id="choose">
    </div>
    <div id="socials">
        <div id="socialdivs">
        </div>
    </div>
    <div id="footer">
    </div>
</div>
</body>
</html>

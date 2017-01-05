<%@ page import="db.UserProvider" %><%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 11.12.2016
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<html>--%>
<%--<head>--%>
    <%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<nav class="navbar navbar-inverse">--%>
    <%--<div class="container-fluid">--%>
        <%--<div class="navbar-header">--%>
            <%--<a class="navbar-brand" href="controller?comand=home">КУ-ЧАТ</a>--%>
        <%--</div>--%>
        <%--<ul class="nav navbar-nav">--%>
            <%--<li ><a href="controller?comand=home">Моя страница</a></li>--%>
            <%--<li class="active"><a href="controller?comand=allChat">Чаты</a></li>--%>
            <%--<li><a href="controller?comand=find">Поиск <span class="badge">2</span></a></li>--%>
            <%--<li><a href="controller?comand=settings">Настройки</a></li>--%>
        <%--</ul>--%>
        <%--<ul class="nav navbar-nav navbar-right">--%>
            <%--<li><a href="controller?comand=logOut"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>--%>
        <%--</ul>--%>
    <%--</div>--%>
<%--</nav>--%>
<%--<br>--%>
<%--1111--%>
<%--</body>--%>
<%--</html>--%>
<html>
<head>
    <title>KY-Chat</title>
    <meta charset="utf-8">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style>
        .noresize {
            resize: none;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- navbar -->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="controller?comand=home">КУ-ЧАТ</a>
            </div>
            <ul class="nav navbar-nav">
                <li ><a href="controller?comand=home">Моя страница</a></li>
                <li class="active"><a href="controller?comand=allChat">Чаты</a></li>
                <li><a href="controller?comand=find">Поиск <span class="badge"></span></a></li>
                <li><a href="controller?comand=settings">Настройки</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="controller?comand=logOut"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
            </ul>
        </div>
    </nav>
    <!-- /navbar -->




        <%--<form action="controller?comand=startChat" method="post">--%>
            <div class="row " style="padding-top:2px;">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <%--<c: set var="newUser" value="${chat.key}" scope="session"/>--%>
                        <%--${chat.key}--%>
                        Чаты:
                    </div>

                    <div class="list-group panel-body">
                            <%--<div class = "media">--%>
                                <%--<img class = "media-object pull-left" src = "http://themeandphoto.com/taplivedemos/2014/09/15/bootstrap-chat-example/assets/img/user.png" alt = "Media Object">--%>

                                <%--<div class = "media-body">--%>
                                        <%--${chat.value.get(chat.value.size()-1)}--%>
                                    <%--&lt;%&ndash;<br><small class="text-muted">Adolph Hitler | 22 June at 4:00am</small>&ndash;%&gt;--%>
                                <%--</div>--%>
                                <%--<form method="post" action="controller?comand=startChat&newUser=${chat.key}">--%>
                                    <%--<div class="col-sm-6"><button class="btn btn-lg btn-primary btn-block" type="submit" id="signin">Go Chat</button></div>--%>
                                    <%--&lt;%&ndash;<input hidden="true" name="newUser" value="${chat.key}">&ndash;%&gt;--%>
                                <%--</form>--%>
                            <%--</div>--%>
                                <c:forEach items="${chats}" var="chat">
                                <a href="controller?comand=startChat&newUser=${chat.key}" class="list-group-item">
                                    <div class = "media">
                                        <img class = "media-object pull-left" src = "http://themeandphoto.com/taplivedemos/2014/09/15/bootstrap-chat-example/assets/img/user.png" alt = "Media Object">

                                        <div class = "media-body">
                                                ${chat.value.get(chat.value.size()-1)}
                                            <br><small class="text-muted">${chat.key}</small>
                                        </div>

                                    </div>
                                </a>
                                </c:forEach>
                    </div>

                </div>

            </div>

            </div>

</div>
<!-- /container -->

</body>
</html>
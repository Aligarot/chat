<%@ page import="chat.Chat" %>
<%@ page import="db.ChatProvider" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 09.12.2016
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>

<%--<html>--%>
<%--<head>--%>
    <%--<meta charset="utf-8">--%>
    <%--<script type="text/javascript">--%>
        <%--history.pushState(null, null, 'controller?comand=updateChat');--%>
        <%--window.addEventListener('popstate', function(event) {--%>
            <%--history.pushState(null, null, 'controller?comand=updateChat');--%>
        <%--});--%>
    <%--</script>--%>
    <%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>FX TASHIT</h1>--%>
<%--<%=--%>

<%--request.getAttribute("massages")--%>

<%--%>--%>

<%--<form method="post" action="controller?comand=updateChat">--%>
    <%--<input type="text" name="message" >--%>
    <%--<input type="submit" value="goChat" >--%>
<%--</form>--%>
<%--<form method="post" action="controller?comand=home">--%>
    <%--<input type="submit" value="home" >--%>
<%--</form>--%>
<%--</body>--%>

<%--</html>--%>
<html>
<head>
    <script type="text/javascript">
    history.pushState(null, null, 'controller?comand=updateChat');
    window.addEventListener('popstate', function(event) {
    history.pushState(null, null, 'controller?comand=updateChat');
    });
    </script>
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

    <div class="row " style="padding-top:40px;">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    Chat:${newUser.login}
                </div>
                <div class="list-group panel-body">

                    <%--<%--%>
                        <%--for (String message: (List<String>)request.getAttribute("massages")) {--%>
                            <%--<%=--%>
                            <%--<div href="#" class="list-group-item">--%>
                                <%--<div class = "media">--%>
                                    <%--<img class = "media-object pull-left" src = "http://themeandphoto.com/taplivedemos/2014/09/15/bootstrap-chat-example/assets/img/user.png" alt = "Media Object">--%>

                                    <%--<div class = "media-body">--%>
                                            <%--BLITZKRIEG--%>
                                            <%--<br><small class="text-muted">Adolph Hitler | 22 June at 4:00am</small>--%>
                                        <%--</div>--%>

                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--%>--%>
                        <%--}--%>
                    <%--%>--%>


                    <c:forEach items="${massages}" var="massage">
                        <div href="#" class="list-group-item">
                            <div class = "media">
                                <img class = "media-object pull-left" src = "http://themeandphoto.com/taplivedemos/2014/09/15/bootstrap-chat-example/assets/img/user.png" alt = "Media Object">

                                <div class = "media-body">
                                    <c:out value="${massage}"/>
                                    <br><small class="text-muted"></small>
                                </div>

                            </div>
                        </div>
                    </c:forEach>



                    <%--<div href="#" class="list-group-item">--%>
                        <%--<div class = "media">--%>
                            <%--<img class = "media-object pull-left" src = "http://themeandphoto.com/taplivedemos/2014/09/15/bootstrap-chat-example/assets/img/user.png" alt = "Media Object">--%>

                            <%--<div class = "media-body">--%>
                                <%--BLITZKRIEG--%>
                                <%--<br><small class="text-muted">Adolph Hitler | 22 June at 4:00am</small>--%>
                            <%--</div>--%>

                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div href="#" class="list-group-item">--%>
                        <%--<div class = "media">--%>
                            <%--<img class = "media-object pull-left" src = "http://themeandphoto.com/taplivedemos/2014/09/15/bootstrap-chat-example/assets/img/user.png" alt = "Media Object">--%>

                            <%--<div class = "media-body">--%>
                                <%--BLITZKRIEG--%>
                                <%--<br><small class="text-muted">Adolph Hitler | 22 June at 4:00am</small>--%>
                            <%--</div>--%>

                        <%--</div>--%>
                    <%--</div>--%>


                    <div class="panel-footer">
                        <form class="form-send" method="post" action="controller?comand=updateChat">
                            <textarea name="message" class="form-control noresize" rows="3" placeholder="Type a message"></textarea>
                            <br>
                            <div class=""><button class="btn btn-lg btn-primary btn-block" type="submit" id="signin">Send</button></div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- /container -->

</body>
</html>
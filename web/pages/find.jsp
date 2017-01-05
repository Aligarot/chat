<%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 07.12.2016
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--<head>--%>
    <%--<meta http-equiv="cache-control" content="no-cache" />--%>
    <%--<title>Title</title>--%>
    <%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form method="post" action="controller?comand=findLogin">--%>
    <%--<input type="text" name="newLogin">--%>
    <%--<input type="submit" value="find" >--%>
<%--</form>--%>


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
        .form-find-chat {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
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
                <li><a href="controller?comand=allChat">Чаты</a></li>
                <li class="active"><a href="controller?comand=find">Поиск <span class="badge"></span></a></li>
                <li><a href="controller?comand=settings">Настройки</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="controller?comand=logOut"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
            </ul>
        </div>
    </nav>
    <!-- /navbar -->

    <!-- main -->
    <form class="form-find-chat" method="post" action="controller?comand=findLogin">
        <center><h2 class="form-signin-heading">Найти пользователя</h2></center>

        <div class="form-group">
            <label for="inputLogin"  class="fieldname">Логин пользователя:</label>
            <input type="text" name="newLogin" id="inputLogin" class="form-control input-lg" required>
        </div>

        <div class="row form-group">
            <div class="col-sm-6"><button class="btn btn-lg btn-primary btn-block" name="" type="submit" id="signin">поиск</button></div>
        </div>

    </form>
    <!-- /main -->

</div>
<!-- /container -->

</body>
</html>
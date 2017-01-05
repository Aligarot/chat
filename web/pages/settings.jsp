<%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 09.12.2016
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form method="post" action="controller?comand=home">--%>
    <%--<input type="submit" value="go home">--%>
<%--</form>--%>
<%--<br>--%>
<%--&lt;%&ndash;<%=Home.getLogin()%>&ndash;%&gt;--%>
<%--<br>--%>
<%--<form method="post" action="controller?comand=changeData">--%>
    <%--<input type="text" name="newPassword">--%>
    <%--<label>set Password</label>--%>
    <%--<input type="text" name="newEmail">--%>
    <%--<label>set Email</label>--%>
    <%--<input type="text" name="newInfo">--%>
    <%--<label>set Info</label>--%>
    <%--<input type="submit" value="Save It">--%>
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
        .form-settings {
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
                <li><a href="controller?comand=find">Поиск <span class="badge"></span></a></li>
                <li class="active"><a href="controller?comand=settings">Настройки</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="controller?comand=logOut"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
            </ul>
        </div>
    </nav>
    <!-- /navbar -->

    <!-- main -->
    <form class="form-settings" method="post" action="controller?comand=changeData">
        <center><h2 class="form-signin-heading">Настройки</h2></center>

        <div class="form-group">
            <label for="inputEmail" class="fieldname">Изменить E-Mail</label>
            <input type="email" name="newEmail"  id="inputEmail" class="form-control input-lg">
        </div>

        <div class="form-group">
            <label for="inputPassword" class="fieldname">Изменить пароль:</label>
            <input type="password" name="newPassword" id="inputPassword" class="form-control input-lg">
        </div>

        <%--<div class="form-group required">--%>
            <%--<label for="inputSecretAnswer" class="fieldname">Изменить секретный вопрос:</label>--%>
            <%--<input type="text" id="inputSecretAnswer" class="form-control input-lg">--%>
        <%--</div>--%>

        <div class="form-group">
            <label for="inputAdditionalInfo" class="fieldname">Изменить информацию о себе:</label>
            <textarea class="form-control input-lg noresize" name="newInfo" rows="5" id="inputAdditionalInfo"></textarea>
        </div>

        <div class="row form-group">
            <div class="col-sm-6 col-sm-offset-6"><button class="btn btn-lg btn-primary btn-block" type="submit" id="submit">Сохранить</button></div>
        </div>

    </form>
    <!-- /main -->

</div>
<!-- /container -->

</body>
</html>
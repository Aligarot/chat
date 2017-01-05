<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 05.12.2016
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<meta http-equiv="cache-control" content="no-cache" />--%>
    <%--<title>Title</title>--%>
    <%--<script type="text/javascript">--%>
        <%--history.pushState(null, null, 'controller?comand=home');--%>
        <%--window.addEventListener('popstate', function(event) {--%>
            <%--history.pushState(null, null, 'controller?comand=home');--%>
        <%--});--%>
    <%--</script>--%>
<%--</head>--%>
<%--<body>--%>
<%--&lt;%&ndash;<%=request.getParameter("name")%>&ndash;%&gt;--%>
<%--<%=((User)request.getSession().getAttribute("user")).getLogin()%>--%>
<%--<br>--%>
<%--<%=((User)request.getSession().getAttribute("user")).getEmail()%>--%>
<%--<br>--%>
<%--<%=((User)request.getSession().getAttribute("user")).getInfo()%>--%>
<%--<br>--%>
<%--<form method="post" action="controller?comand=index">--%>
    <%--<input type="submit" value="back" >--%>
<%--</form>--%>
<%--<br>--%>
<%--<form method="post" action="controller?comand=logOut">--%>
    <%--<input type="submit" value="logout" >--%>
<%--</form>--%>
<%--<br>--%>
<%--<form method="post" action="controller?comand=find">--%>
    <%--<input type="submit" value="find" >--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
<html>
<head>
    <script type="text/javascript">
    history.pushState(null, null, 'controller?comand=home');
    window.addEventListener('popstate', function(event) {
    history.pushState(null, null, 'controller?comand=home');
    });
    </script>
    <title>Home</title>
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
                <li class="active"><a href="controller?comand=home">Моя страница</a></li>
                <li><a href="controller?comand=allChat">Чаты</a></li>
                <li><a href="controller?comand=find">Поиск <span class="badge"></span></a></li>
                <li><a href="controller?comand=settings">Настройки</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="controller?comand=logOut"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
            </ul>
        </div>
    </nav>
    <!-- /navbar -->

    <!-- main -->
    <div class="well">
        <div class="row">
            <div class="col-sm-9">
                <h2>Моя страница</h2>
                <p><%=((User)request.getSession().getAttribute("user")).getLogin()%></p>
                <p>E-Mail: <%=((User)request.getSession().getAttribute("user")).getEmail()%></p>
                <p>Информация о себе: <%=((User)request.getSession().getAttribute("user")).getInfo()%></p>
            </div>
            <div class="col-sm-3">
                <img src="http://www.regionaldevelopment.co.uk/assets/img/team/timrose.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="400">
            </div>
        </div>
    </div>
    <!-- /main -->

</div>
<!-- /container -->

</body>
</html>
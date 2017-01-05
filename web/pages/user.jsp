<%@ page import="entity.User" %>
<%@ page import="db.ChatProvider" %><%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 08.12.2016
  Time: 0:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<meta http-equiv="cache-control" content="no-cache" />--%>
    <%--<title>Title</title>--%>
    <%--<meta charset="utf-8">--%>

<%--</head>--%>
<%--<body>--%>
<%--<%=((User)request.getSession().getAttribute("newUser")).getLogin()%>--%>
<%--<br>--%>
<%--<%=((User)request.getSession().getAttribute("newUser")).getEmail()%>--%>
<%--<br>--%>
<%--<%=((User)request.getSession().getAttribute("newUser")).getInfo()%>--%>
<%--<br>--%>
<%--&lt;%&ndash;&lt;%&ndash;%>--%>
    <%--&lt;%&ndash;ChatProvider chatProvider = new ChatProvider();&ndash;%&gt;--%>
    <%--&lt;%&ndash;if((chatProvider.getChat(((User)request.getSession().getAttribute("newUser")).getId(),((User)request.getSession().getAttribute("user")).getId()))==0){&ndash;%&gt;--%>
        <%--&lt;%&ndash;request.setAttribute("comand","startChat");  &ndash;%&gt;--%>
    <%--&lt;%&ndash;}else{&ndash;%&gt;--%>
        <%--&lt;%&ndash;request.setAttribute("comand","chat");&ndash;%&gt;--%>
    <%--&lt;%&ndash;}&ndash;%&gt;--%>
<%--&lt;%&ndash;%>&ndash;%&gt;--%>
<%--<form method="post" action="controller?comand=openChat">--%>
    <%--<input type="submit" value="goChat" >--%>
<%--</form>--%>
<%--<br>--%>
<%--</body>--%>
<%--</html>--%>

<html>
<head>
    <%--<script type="text/javascript">--%>
        <%--history.pushState(null, null, 'controller?comand=home');--%>
        <%--window.addEventListener('popstate', function(event) {--%>
            <%--history.pushState(null, null, 'controller?comand=home');--%>
        <%--});--%>
    <%--</script>--%>
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
    <div class="well">
        <div class="row">
            <div class="col-sm-9">
                <h2><p><%=((User)request.getSession().getAttribute("newUser")).getLogin()%></p></h2>
                <p>E-Mail: <%=((User)request.getSession().getAttribute("newUser")).getEmail()%></p>
                <p>Информация о себе: <%=((User)request.getSession().getAttribute("newUser")).getInfo()%></p>
            </div>
            <div class="col-sm-3">
                <img src="http://www.regionaldevelopment.co.uk/assets/img/team/timrose.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="400">
            </div>
        </div>
    </div>

    <div class="col-sm-6"><a href="controller?comand=openChat" class="btn btn-lg btn-primary btn-block" id="signup">Go Chat</a></div>
    <!-- /main -->

</div>
<!-- /container -->

</body>
</html>

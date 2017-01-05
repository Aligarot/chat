<%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 05.12.2016
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>KY-Chat</title>

    <meta charset="utf-8">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <style>
        .form-signin {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
        }
    </style>



    <script type="text/javascript">
        history.pushState(null, null, 'controller?comand=index');
        window.addEventListener('popstate', function(event) {
            history.pushState(null, null, 'controller?comand=index');
        });
    </script>




</head>
<body>
<div class="container">

    <form class="form-signin" method="post" action="controller?comand=home">
        <center><h2 class="form-signin-heading">Войти в KY-CHAT</h2></center>
        <div class="form-group">
            <label for="inputLogin" class="fieldname">Логин:</label>
            <input type="text"  id="inputLogin" class="form-control input-lg" name="login" required>
        </div>

        <div class="form-group">
            <label for="inputPassword" class="fieldname">Пароль:</label>
            <input type="password"  id="inputPassword" class="form-control input-lg" name="password" required>
        </div>

        <%--<div class="checkbox form-group">--%>
            <%--<label>--%>
                <%--<input type="checkbox" name="remember" value="remember-me" id="rememberme"> Remember me--%>
            <%--</label>--%>
        <%--</div>--%>

        <div class="row form-group">
            <div class="col-sm-6"><button class="btn btn-lg btn-primary btn-block" type="submit" id="signin">Войти</button></div>
        </div>

        <div class="row form-group">
            <div class="col-sm-9"><a href="controller?comand=registr" class="btn btn-lg btn-primary btn-block" id="signup">Зарегестрироваться</a></div>
        </div>
    </form>


</div> <!-- /panel -->
</body>
</html>

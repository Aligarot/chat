<%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 05.12.2016
  Time: 19:37
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
        .form-signup {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
        }
        .noresize {
            resize: none;
        }
        .form-group.required .fieldname:after {
            content:" *";
            color:red;
        }
        .labelRequired {
            color:red;
        }
    </style>
    <title>Title</title>
    <%--<script type="text/javascript">--%>
        <%--history.pushState(null, null, 'controller?comand=index');--%>
        <%--window.addEventListener('popstate', function(event) {--%>
            <%--history.pushState(null, null, 'controller?comand=index');--%>
        <%--});--%>
    <%--</script>--%>
</head>
<body>
<div class="container">
    <form class="form-signup" method="post" action="controller?comand=registrSave">
        <center><h2 class="form-signin-heading">Войти в KY-CHAT</h2></center>

        <div class="form-group required">
            <label for="inputLogin" class="fieldname">Логин</label>
            <input type="text" name="login" id="inputLogin" class="form-control input-lg" required>
        </div>

        <div class="form-group required">
            <label for="inputEmail" class="fieldname">Email</label>
            <input type="email" name="email" id="inputEmail" class="form-control input-lg" required>
        </div>

        <div class="form-group required">
            <label for="inputPassword" class="fieldname">Пороль</label>
            <input type="password" name="password" id="inputPassword" class="form-control input-lg" required>
        </div>

        <%--<div class="form-group required">--%>
            <%--<label for="inputPasswordRepeat" class="fieldname">Repeat password</label>--%>
            <%--<input type="password" id="inputPasswordRepeat" class="form-control input-lg" required>--%>
        <%--</div>--%>

        <div class="form-group required">
            <label for="selectSecretQuestion" class="fieldname">Secret question</label>
            <select class="form-control input-lg" id="selectSecretQuestion">
                <option>Как звали вашего первого питомца?</option>
                <option>Твоя любимая команда?</option>
                <option>Девичья фамилия вашей матери?</option>
                <option>Ваш любимый напиток?</option>
                <option>Ваше любимое блюдо?</option>
            </select>
        </div>

        <div class="form-group required">
            <label for="inputSecretAnswer" class="fieldname">Ответ на секретный вопрос</label>
            <input type="text" name="secret_answer" id="inputSecretAnswer" class="form-control input-lg" required>
        </div>

        <div class="form-group">
            <label for="inputAdditionalInfo" class="fieldname">Дополнительная информация</label>
            <textarea class="form-control input-lg noresize" name="info" rows="5" id="inputAdditionalInfo"></textarea>
        </div>

        <div class="form-group">
            <div class="labelRequired">* Обязательное поле</div>
        </div>

        <div class="row form-group">
            <div class="col-sm-6 col-sm-offset-6"><button class="btn btn-lg btn-primary btn-block" type="submit" id="submit">Зарегестрироваться</button></div>
        </div>

    </form>
</div>
<!-- /container -->

</body>
</html>

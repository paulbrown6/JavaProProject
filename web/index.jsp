<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="files/css/style.css" />
    <title>Авторизация</title>
</head>
<body class="body">

    <form action="log" method="post" class="form">
        <h1><span class="log-in">Войти</span></h1>
        <p class="float">
        <input type="email" name="login" placeholder="введите email">
        </p>
        <p class="float">
        <input type="password" name="pass" placeholder="введите пароль">
        </p>
        <p class="clearfix">
        <input class="button" type="submit" value="Войти">
        </p>
        <a>Если вы здесь впервые, то <a href="registration.html">зарегистрируйтесь</a>!</a>
        <br/>
        <a class="error">${error}</a>
    </form>
</body>
</html>
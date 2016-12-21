<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Авторизация</title>
</head>
<body>
    <form action="log" method="post">
        <input type="email" name="login" placeholder="введите email">
        <input type="password" name="pass" placeholder="введите пароль">
        <input type="submit" value="Войти">
    </form>
    <a>Если вы здесь впервые, то <a href="registration.html">зарегистрируйтесь</a>!</a>
    <br/>
    <a>${error}</a>
</body>
</html>
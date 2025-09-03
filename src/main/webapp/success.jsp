<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Регистрация успешна</title>
    <style>.success { color: green; }</style>
</head>
<body>
    <h2 class="success">Регистрация успешно завершена!</h2>
    <p><strong>Имя пользователя:</strong> <%= request.getAttribute("username") %></p>
     <p><strong>Email:</strong> <%= request.getAttribute("email") %></p>
    <br>
    <a href="register">Зарегистрировать нового пользователя</a>
</body>
</html>
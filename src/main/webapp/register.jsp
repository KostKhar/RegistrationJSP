<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
        .error { color: red; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input[type="text"], input[type="email"], input[type="password"] {
            width: 250px; padding: 8px; border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <h2>Registration Form</h2>

    <%-- Вывод сообщения об ошибке --%>
    <% if (request.getAttribute("errorMessage") != null) { %>
        <p class="error"><%= request.getAttribute("errorMessage") %></p>
    <% } %>

    <form action="register" method="POST">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required
                   value="<%= request.getParameter("username") != null ?
                           request.getParameter("username") : "" %>">
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required
                   value="<%= request.getParameter("email") != null ?
                           request.getParameter("email") : "" %>">
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>

        <input type="submit" value="Sign Up">
    </form>
</body>
</html>

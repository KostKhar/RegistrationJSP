import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "RegistrationServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Показываем форму регистрации
        getServletContext().getRequestDispatcher("/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {


        // Получаем параметры формы
        String name = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // Валидация параметров
        if (name == null || name.trim().isEmpty() ||
                email == null || email.trim().isEmpty() ||
                password == null || password.trim().isEmpty()) {

            req.setAttribute("errorMessage", "Все поля обязательны для заполнения");
            req.getRequestDispatcher("/error.jsp").forward(req, resp);
            return;
        }

        req.setAttribute("username", name);
        req.setAttribute("email", email);
        req.setAttribute("password", password);

        // Логируем полученные данные
        System.out.println("Registered user: " + name + ", Email: " + email);

        // Перенаправляем на страницу успеха
        req.getRequestDispatcher("/success.jsp").forward(req, resp);
    }
}

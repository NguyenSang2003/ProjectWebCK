package Controller;

import DAO.LoginDAO;
import Services.Connect;
import nhom26.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
import java.util.Date;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Đặt encoding cho request và response
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        LoginDAO loginDAO = new LoginDAO();
        User user = loginDAO.getUserByEmailAndPass(email, password);
        if(user != null){
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            session.setMaxInactiveInterval(10 * 60);
            resp.sendRedirect("index.jsp");
        }
        else{
            req.setAttribute("err", "Email hoặc mật khẩu không đúng");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}

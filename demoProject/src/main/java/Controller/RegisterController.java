package Controller;

import DAO.UserDAO;
import Properties.DBProperties;
import Services.Connect;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.*;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Đặt encoding cho request và response
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(req.getInputStream()));
        StringBuilder stringBuilder = new StringBuilder();
        String line;
        while ((line = bufferedReader.readLine()) != null) {
            stringBuilder.append(line);
        }

        bufferedReader.close();
        JSONObject jsonObject = new JSONObject(stringBuilder.toString());
        String fullname = jsonObject.getString("fullname");
        String email = jsonObject.getString("email");
        String password = jsonObject.getString("password");
        Connection connection = null;

        UserDAO userDAO = new UserDAO();
        boolean checkResgisterSuccess = userDAO.resgisterWithEmail(email,fullname,password);
        JSONObject jsonObjectResults = new JSONObject();
        if (checkResgisterSuccess) {
            jsonObjectResults.put("status", 200);
            jsonObjectResults.put("message", "Đăng kí thành công");
            resp.setContentType("application/json");
            resp.getWriter().write(jsonObjectResults.toString());
        } else {
            jsonObjectResults.put("status", 500);
            jsonObjectResults.put("message", "Đăng kí không thành công");
            resp.setContentType("application/json");
            resp.getWriter().write(jsonObjectResults.toString());

        }

    }
}
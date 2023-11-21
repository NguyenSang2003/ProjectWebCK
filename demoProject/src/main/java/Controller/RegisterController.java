package Controller;

import Properties.DBProperties;
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

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
            String checkEmail = "select email from user where email = ?";
            PreparedStatement preparedStatementCheckEmail = connection.prepareStatement(checkEmail);
            preparedStatementCheckEmail.setString(1, email);
            ResultSet resEmail = preparedStatementCheckEmail.executeQuery();
            if (resEmail.next()) {
                req.setAttribute("err", "Email đã được đăng kí");
                req.getRequestDispatcher("register.jsp").forward(req, resp);
                System.out.println("Đăng kí r");
            } else {
                String sql = "SELECT MAX(idUser) AS max_user_id FROM user";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();
                java.util.Date utilDate = new java.util.Date();
                java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
                if (resultSet.next()) {
                    int maxUserId = resultSet.getInt("max_user_id");
                    String insert = "Insert into User values (?,?,?,?,?,?,?,?)";
                    PreparedStatement preparedStatement1 = connection.prepareStatement(insert);
                    preparedStatement1.setInt(1, maxUserId + 1);
                    preparedStatement1.setString(2, email);
                    preparedStatement1.setString(3, fullname);
                    preparedStatement1.setString(4, password);
                    preparedStatement1.setString(5, "false");
                    preparedStatement1.setString(6, "true");
                    preparedStatement1.setString(7, "false");
                    preparedStatement1.setDate(8, sqlDate);
                    int resultSet1 = preparedStatement1.executeUpdate();
                    if (resultSet1 > 0) {
                        resp.sendRedirect("login.jsp");
                    } else {
                        req.setAttribute("err", "Bị lỗi vui lòng tạo lại");
                    }
                    preparedStatement1.close();
                } else {
                    System.out.println("Không có dữ liệu");
                }
                resultSet.close();
                preparedStatement.close();
            }
            preparedStatementCheckEmail.close();
            resEmail.close();
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
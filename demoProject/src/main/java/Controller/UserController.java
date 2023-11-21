package Controller;

import nhom26.Topic;
import nhom26.User;
import org.json.JSONObject;

import javax.print.attribute.standard.MediaSize;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(name = "Usercontroller", value = "/user")
public class UserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String idUser = req.getParameter("idUser"); // ok
        System.out.println("-----USER[GET]");
        System.out.println("idUser: " + idUser );
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");

            // Câu truy vấn kiểm tra quyền admin
            String sql = "select isAdmin from user where idUser= ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, idUser);
            ResultSet resultSet = preparedStatement.executeQuery();
            boolean isAdmin = false;
            JSONObject jsonObject = new JSONObject();
            if (resultSet.next()) {
                isAdmin = resultSet.getBoolean("isAdmin");
            }
            else{

                jsonObject.put("status", 500);
            }
            System.out.println("isAdmin :" + isAdmin);

            // Kiểm tra quyền và chuyển hướng

            if (isAdmin) {
            // Câu truy vấn lấy dữ liệu topic
            String getAllUser = "select idUser, email,name, password, isVerifyEmail, isActive, isAdmin, createdAt from user";
            PreparedStatement preparedStatementGetUser= connection.prepareStatement(getAllUser);
            ResultSet resultSetGetUser = preparedStatementGetUser.executeQuery();
            ArrayList<User> listUser = new ArrayList<User>();
            while (resultSetGetUser.next()) {
                User user = new User();
                user.setId(resultSetGetUser.getInt("idUser"));
                user.setEmail(resultSetGetUser.getString("email"));
                user.setUsername(resultSetGetUser.getString("name"));
                user.setPasword(resultSetGetUser.getString("password"));
                user.setVerifyEmail(resultSetGetUser.getBoolean("isVerifyEmail"));
                user.setActive(resultSetGetUser.getBoolean("isActive"));
                user.setAdmin(resultSetGetUser.getBoolean("isAdmin"));
                user.setCreatedAt(resultSetGetUser.getDate("createdAt"));
                listUser.add(user);
            }
            ArrayList<User> res = new ArrayList<User>();
            for (User user : listUser) {
                if(!user.isAdmin()){
                    res.add(user);
                }
            }
            jsonObject.put("status", 200);
            jsonObject.put("listUser", res);
            resp.setContentType("application/json");
            resp.getWriter().write(jsonObject.toString());
            } else {
                jsonObject.put("status", 404);
                resp.setContentType("application/json");
                resp.getWriter().write(jsonObject.toString());
            }

        } catch (SQLException e) {
            System.err.println("SQLException: " + e.getMessage());
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            System.err.println("ClassNotFoundException: " + e.getMessage());
            throw new RuntimeException(e);
        }

    }

    //    Xóa người dùng
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String idUser = req.getParameter("idUser");
        System.out.println("delete " +idUser);
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
            String sqlDelete = "delete from user where idUser = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlDelete);
            preparedStatement.setString(1,idUser);
            int resultSet = preparedStatement.executeUpdate();
            JSONObject jsonObject = new JSONObject();
            if(resultSet > 0){
                jsonObject.put("status", 200);
                jsonObject.put("message", "Đã xóa thành công");
                resp.setContentType("application/json");
                resp.getWriter().write(jsonObject.toString());
            }
            else {
                jsonObject.put("status", 500);
                jsonObject.put("message", "Xóa chủ đề thất bại. Vui lòng thử lại");
                resp.setContentType("application/json");
                resp.getWriter().write(jsonObject.toString());
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String idUser = req.getParameter("idUser");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
            String sqlGetActive = "select isActive from user where idUser = ?";
            boolean isActive ;
            PreparedStatement preparedStatement = connection.prepareStatement(sqlGetActive);
            preparedStatement.setString(1,idUser);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                isActive = resultSet.getBoolean(1);
                String updateActive;
                if (isActive){
                    updateActive = "false";
                }
                else{
                    updateActive = "true";
                }
                String sqlBlockOrUB = "UPDATE user set isActive = ? where idUser = ?";
                PreparedStatement preparedStatement1 = connection.prepareStatement(sqlBlockOrUB);
                preparedStatement1.setString(1,updateActive);
                preparedStatement1.setString(2,idUser);
                int res = preparedStatement1.executeUpdate();
                JSONObject jsonObject = new JSONObject();
                if(res > 0){
                    jsonObject.put("status", 200);
                    jsonObject.put("message", isActive ? "Đã chặn thành công" : "Đã mở chặn thành công");
                    resp.setContentType("application/json");
                    resp.getWriter().write(jsonObject.toString());
                }
                else{
                    jsonObject.put("status", 500);
                    jsonObject.put("message", "Thất bại");
                    resp.setContentType("application/json");
                    resp.getWriter().write(jsonObject.toString());
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}

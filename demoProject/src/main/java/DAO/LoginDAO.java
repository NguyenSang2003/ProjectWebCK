package DAO;

import Services.Connect;
import nhom26.User;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    public User getUserByEmailAndPass(String email, String pass) {
        Connection connection = null;
        try {
            connection = Connect.getConnection();
            String sql = "select idUser, email,name, password, isVerifyEmail, isActive, isAdmin, createdAt from user where email = ? AND password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, pass);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt(1));
                user.setEmail(resultSet.getString(2));
                user.setUsername(resultSet.getString(3));
                user.setPasword(resultSet.getString(4));
                user.setVerifyEmail(resultSet.getBoolean(5));
                user.setActive(resultSet.getBoolean(6));
                user.setAdmin(resultSet.getBoolean(7));
                user.setCreatedAt(resultSet.getDate(8));
//                System.out.println(user);
                return user;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            Connect.closeConnection(connection);
        }
        return null;
    }
}

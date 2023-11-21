package DAO;

import Services.Connect;
import nhom26.User;
import org.json.JSONObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
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

    public boolean checkEmail(String email) {
        Connection connection = null;
        boolean checkEmail = false;
        try {
            connection = Connect.getConnection();
            String checkEmailQuery = "select email from user where email = ?";
            PreparedStatement preparedStatementCheckEmail = connection.prepareStatement(checkEmailQuery);
            preparedStatementCheckEmail.setString(1, email);
            ResultSet resEmail = preparedStatementCheckEmail.executeQuery();
            if (resEmail.next()) {
                checkEmail = true;
                return checkEmail;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            Connect.closeConnection(connection);
        }
        return checkEmail;
    }

    public boolean resgisterWithEmail(String email, String username, String pass) {
        Connection connection = null;
        if (checkEmail(email)) {
            return false;
        } else {
            try {
                connection = Connect.getConnection();
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
                    preparedStatement1.setString(3, username);
                    preparedStatement1.setString(4, pass);
                    preparedStatement1.setString(5, "false");
                    preparedStatement1.setString(6, "true");
                    preparedStatement1.setString(7, "false");
                    preparedStatement1.setDate(8, sqlDate);
                    int resultSet1 = preparedStatement1.executeUpdate();
                    JSONObject jsonObject1 = new JSONObject();
                    if (resultSet1 > 0) {
                        return true;
                    } else {
                        return false;
                    }

                } else {
                    return false;
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            finally {
                Connect.closeConnection(connection);
            }
        }

    }
}

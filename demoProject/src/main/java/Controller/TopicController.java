package Controller;

import DAO.TopicDAO;
import DAO.UserDAO;
import nhom26.Topic;
import org.json.JSONObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(name = "TopicController", value = "/topic")
public class TopicController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String idUser = req.getParameter("idUser");
        System.out.println("idUser: " + idUser);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
            UserDAO userDAO = new UserDAO();
            boolean isAdmin = userDAO.checkIsAdmin(idUser);
            // Kiểm tra quyền và chuyển hướng
            JSONObject jsonObject = new JSONObject();
            if (isAdmin) {
                // Câu truy vấn lấy dữ liệu topic
                String getAllTopic = "select idTopic , name, interfaceImage from topic";
                PreparedStatement preparedStatementGetTopic = connection.prepareStatement(getAllTopic);
                ResultSet resultSetGetTopic = preparedStatementGetTopic.executeQuery();
                ArrayList<Topic> listTopic = new ArrayList<Topic>();
                while (resultSetGetTopic.next()) {
                    Topic topic = new Topic();
                    topic.setIdTopic(resultSetGetTopic.getInt("idTopic"));
                    topic.setName(resultSetGetTopic.getString("name"));
                    topic.setImageInterface(resultSetGetTopic.getString("interfaceImage"));
                    topic.setProduct(0);
                    listTopic.add(topic);
                }
                jsonObject.put("status", 200);
                jsonObject.put("listTopic", listTopic);
                resp.setContentType("application/json");
                resp.getWriter().write(jsonObject.toString());
//            System.out.println(listTopic.size());
//            req.setAttribute("listTopic" , listTopic);
//            req.getRequestDispatcher("/quanlichude.jsp").forward(req,resp);

//                resp.sendRedirect("/index.jsp");
                return;
            } else {
                jsonObject.put("status", 404);
                resp.setContentType("application/json");
                resp.getWriter().write(jsonObject.toString());
//                resp.sendRedirect("/404.jsp");
//                System.out.println("Response Status Code: " + resp.getStatus());
                return;
            }

        } catch (SQLException e) {
            System.err.println("SQLException: " + e.getMessage());
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            System.err.println("ClassNotFoundException: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF8");
        resp.setCharacterEncoding("UTF-8");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(req.getInputStream()));
        StringBuilder stringBuilder = new StringBuilder();
        String line;
        while ((line = bufferedReader.readLine()) != null) {
            stringBuilder.append(line);
        }
        bufferedReader.close();
        JSONObject jsonObject = new JSONObject(stringBuilder.toString());
        String nameTopic = jsonObject.getString("nameTopic");
        String interfaceImage = jsonObject.getString("interfaceImage");
        JSONObject jsonObject1 = new JSONObject();
        TopicDAO topicDAO = new TopicDAO();
//            Kiểm tra xem topic này đã tồn tại chưa
        if (topicDAO.checkNameTopicExist(nameTopic)) {
            jsonObject1.put("status", 500);
            jsonObject1.put("message", "Tên chủ đề đã tồn tại");
            resp.setContentType("application/json");
            resp.getWriter().write(jsonObject1.toString());
            System.out.println("Chủ đề đã tồn tại");
        }
//                    Insert data
        else {
            if (topicDAO.insertTopic(nameTopic, interfaceImage)) {
                jsonObject1.put("status", 200);
                jsonObject1.put("message", "Đã thêm thành công chủ đề");
                resp.setContentType("application/json");
                resp.getWriter().write(jsonObject1.toString());
            } else {
                jsonObject1.put("status", 500);
                jsonObject1.put("message", "Đã thêm thành công chủ đề");
                resp.setContentType("application/json");
                resp.getWriter().write(jsonObject1.toString());
            }
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String idTopic = req.getParameter("idTopic");
        JSONObject jsonObject = new JSONObject();
        TopicDAO topicDAO = new TopicDAO();
        System.out.println("Delete idTopic: " + idTopic);
        System.out.println( "At line 126 : " + topicDAO.deleteTopic(idTopic));
        if (topicDAO.deleteTopic(idTopic)) {
            jsonObject.put("status", 200);
            jsonObject.put("message", "Đã xóa thành công");
            resp.setContentType("application/json");
            resp.getWriter().write(jsonObject.toString());
        } else {
            jsonObject.put("status", 500);
            jsonObject.put("message", "Xóa chủ đề thất bại. Vui lòng thử lại");
            resp.setContentType("application/json");
            resp.getWriter().write(jsonObject.toString());
        }
    }
}

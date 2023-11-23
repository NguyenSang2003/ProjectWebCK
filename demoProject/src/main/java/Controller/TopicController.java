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

        UserDAO userDAO = new UserDAO();
        boolean isAdmin = userDAO.checkIsAdmin(idUser);
        // Kiểm tra quyền và chuyển hướng
        JSONObject jsonObject = new JSONObject();
        TopicDAO topicDAO = new TopicDAO();
        System.out.println("isAdmin:" + isAdmin);
        if (isAdmin) {
            jsonObject.put("status", 200);
            jsonObject.put("listTopic", topicDAO.getAllTopics());
            resp.setContentType("application/json");
            resp.getWriter().write(jsonObject.toString());
        } else {
            jsonObject.put("status", 404);
            resp.setContentType("application/json");
            resp.getWriter().write(jsonObject.toString());
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
        System.out.println("At line 126 : " + topicDAO.deleteTopic(idTopic));
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

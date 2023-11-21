package Controller;

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

@WebServlet(name = "ProductController",value = "/product/*")
public class ProductController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        String type = req.getPathInfo();
        System.out.println(type);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(req.getInputStream()));
        StringBuilder stringBuilder = new StringBuilder();
        String line;
        if(type.equals("/addImg")){
            while((line = bufferedReader.readLine()) !=null){
                stringBuilder.append(line);
            }
            bufferedReader.close();
            System.out.println(stringBuilder.toString());
            JSONObject jsonObject = new JSONObject(stringBuilder.toString());
            String nameTopic = jsonObject.getString("nameTopic");
            String nameImg = jsonObject.getString("nameImg");
            String description =  jsonObject.getString("description");
            int price = jsonObject.getInt("price");
            int discount = jsonObject.getInt("discount");
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
//                Kiểm tra nameTopic có tồn tại hay không
                String sqlCheckNameTopic = "select idTopic from topic where name = ?";
                PreparedStatement preparedStatementCheckNameTopic = connection.prepareStatement(sqlCheckNameTopic);
                preparedStatementCheckNameTopic.setString(1,nameTopic);
                ResultSet resultSetCheckNameTopic = preparedStatementCheckNameTopic.executeQuery();
                JSONObject jsonObjectResults = new JSONObject();
                if(!resultSetCheckNameTopic.next()){
                    jsonObjectResults.put("status", 500);
                    jsonObjectResults.put("message", "Tên chủ đề không tồn tại");
                    resp.setContentType("application/json");
                    resp.getWriter().write(jsonObject.toString());
                }
                else{
                    jsonObjectResults.put("status", 500);
                    jsonObjectResults.put("message", "Tên chủ đề ");
                    resp.setContentType("application/json");
                    resp.getWriter().write(jsonObjectResults.toString());
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
    }
}

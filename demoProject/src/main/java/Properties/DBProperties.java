package Properties;

import java.io.IOException;
import java.util.Properties;

public class DBProperties {
    private  static Properties properties = new Properties();
    static {
        try {
            properties.load(DBProperties.class.getClassLoader().getResourceAsStream("DB.properties"));

        }
        catch (IOException e){
            throw  new RuntimeException(e);
        }
    }
    public  static  String URL = properties.getProperty("db.URL");
    public  static  String username = properties.getProperty("db.username");
    public  static  String password = properties.getProperty("db.password");
}

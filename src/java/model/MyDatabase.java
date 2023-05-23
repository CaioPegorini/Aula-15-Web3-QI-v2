
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyDatabase {
    public static Connection getDatabase() throws ClassNotFoundException, SQLException{
       //Qual o driver
       String driver = "com.mysql.jdbc.Driver";
       //caminho do driver
       String url = "jdbc:mysql://localhost:3307/cd_baby";
       //Nome do usuário
       String user = "root";
       //Senha
       String pass = "";
       
       Class.forName(driver);
       Connection conn = DriverManager.getConnection(url, user, pass);
       return conn;
    }
}

package controllers;
 import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    
    public Connection getConnection(){
    try{            
    Class.forName ("com.mysql.jdbc.Driver");
    return DriverManager.getConnection("jdbc:mysql://localhost/containers","root","");
              }
    
    catch (Exception erro){
            throw new RuntimeException("Erro 1" +erro);
                    
                    }
   }
}

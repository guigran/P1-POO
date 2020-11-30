/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javapkg.Disciplina;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author Guilherme
 */
public class DbListener implements ServletContextListener {
private static final String CLASS_NAME = "org.sqlite.JDBC";
    private static final String DB_URL = "jdbc:sqlite:disciplinas.db";
    
    public static String exceptionMessage = null;

  
    Connection con = null;
    Statement stmt = null;
    Exception methodEx = null;
    ResultSet rs = null;
    
    
    
    public static Connection getConnection() throws Exception{
        return DriverManager.getConnection(DB_URL);
    }
    
    @Override
    public void contextInitialized(ServletContextEvent sce) { 
        String etapa = "inicializando";
        
        
        try {
            etapa="registrando a classe do drive";
            Class.forName(CLASS_NAME);
            etapa = "conectando com o banco de dados";
            con = getConnection();
            etapa = "Criar table";
            stmt = con.createStatement();
            stmt.execute(Disciplina.getCreateStatement());
            if(Disciplina.getList().isEmpty()){
                etapa = "criar usuarios";
                stmt.execute("INSERT INTO disciplinas values ("
                        + "'Programação Orientada a Objetos',"
                        + "'Conceitos e evolução da tecnologia de orientação a objetos.',"
                        + "'4',"
                        + "0"
                        + ")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        + "'Engenharia de Software III',"
                        + "'Conceitos, evolução e importância de arquitetura de software.',"
                        + "'4',"
                        + "0"
                        + ")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        + "'Banco de Dados',"
                        + "'Conceitos de Base de Dados. Modelos conceituais de informações.',"
                        + "'4',"
                        + "0"
                        + ")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        + "'Metodologia de Pesquisa',"
                        + "'O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica.',"
                        + "'4',"
                        + "0"
                        + ")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        + "'Sistemas Operacionais II:',"
                        + "'Apresentação de um sistema operacional específico utilizado em ambiente corporativo.',"
                        + "'4',"
                        + "0"
                        + ")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        + "'Linguagem de Programação IV',"
                        + "'Comandos de linguagens usadas na construção e estruturação de sites para a Web',"
                        + "'4',"
                        + "0"
                        + ")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        + "'Segurança da Informação',"
                        + "'Requisitos de segurança de aplicações, de base de dados e de comunicações',"
                        + "'4',"
                        + "0"
                        + ")"
                );
               
            }
            etapa = "criar tabela";
            stmt.execute(Disciplina.getCreateStatement());
    
        } catch (Exception ex) {
            exceptionMessage = etapa + ": " + ex.getLocalizedMessage();
        }finally{
            try {stmt.close();con.close();}catch (Exception e) { }
        }
    }

   @Override
   public void contextDestroyed(ServletContextEvent sce) {
   }
}

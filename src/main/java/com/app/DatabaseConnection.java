package com.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.Context;

import org.apache.tomcat.util.net.ApplicationBufferHandler;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

public class DatabaseConnection implements ServletContextListener 
  {

    @Override
    public void contextInitialized(ServletContextEvent sce)
      {
          ServletContextListener.super.contextInitialized(sce);
        
           try 
              {
           
                  Class.forName("com.mysql.cj.jdbc.Driver");

           
                  Connection cn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/nagvanshi_hospital?autoReconnect=true&useSSL=false", "root", "boot");

          
                  ServletContext application = sce.getServletContext();
                  
                  application.setAttribute("CONN", cn);

                  System.out.println("Database connection successfully.");
             } 
           catch (ClassNotFoundException | SQLException e) 
             {
                 e.printStackTrace();
            
                 System.out.println("Failed database connection: " + e.getMessage());
             }
      }

    @Override
    public void contextDestroyed(ServletContextEvent sce)
      {
          ServletContextListener.super.contextDestroyed(sce);
        
          ServletContext application = sce.getServletContext();
       
          Connection cn = (Connection)application.getAttribute("CONN");

          if (cn != null) 
            {
               try 
                 {
                    cn.close();
                
                    System.out.println("Database connection closed successfully.");
                 } 
               catch (SQLException e) 
                 {
                    e.printStackTrace();
                
                    System.out.println("Failed to close database connection: " + e.getMessage());
                 }
           }
     }
}

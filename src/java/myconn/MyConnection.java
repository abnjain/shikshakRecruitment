package myconn;

import java.sql.*;
public class MyConnection
{
    
    public static Connection getConnect()
    {
        Connection con=null;
        try
        {
            Class.forName(Details.DRIVER);
            con = DriverManager.getConnection(Details.URL,Details.USER,Details.PASS);
            if(con==null)
                    System.out.println("Error occured while making connection");
            else
                    System.out.println("Connection established successfully");   
        }catch(ClassNotFoundException | SQLException e)
        {
            System.out.println("Exception : "+e);
        }
        return con;
    }
}

package dao;
import java.sql.*;
import myconn.MyConnection;

public class AdminDao 
{
    public int getAdminLogin(String email,String password)
    {
        int i=0;
          Connection con = MyConnection.getConnect();
          String query = "select * from admin where email=? and password=?";
          try
          {
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1,email);
             ps.setString(2, password);
             ResultSet rs = ps.executeQuery();
             if(rs.next())
                   i=1;
             con.close();
          }catch(SQLException e)
          {
              System.out.println("Exception : "+e);
          }
        return i;
    }
    public int updateRecruiterStatus(String email)
    {
        int i=0;
          Connection con = MyConnection.getConnect();
          String query = "update recruiter set status=? where email=?";
          try
          {
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1,"true");
             ps.setString(2, email);
             i = ps.executeUpdate();
             if(i>0)
                   i=1;
             con.close();
          }catch(SQLException e)
          {
              System.out.println("Exception : "+e);
          }
        return i;        
    }
}

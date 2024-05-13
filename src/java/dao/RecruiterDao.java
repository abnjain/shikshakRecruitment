package dao;
import java.util.*;
import java.sql.*;
import myconn.MyConnection;
import dto.RecruiterDto;
public class RecruiterDao 
{
    public int getRecruiterLogin(String email,String password)
    {
        int i=0;
          Connection con = MyConnection.getConnect();
          String query = "select * from recruiter where email=? and password=? and status=?";
          try
          {
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1,email);
             ps.setString(2, password);
             ps.setString(3,"true");
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
    
    public int addRecruiter(RecruiterDto obj)
    {
        int i=0;
          Connection con = MyConnection.getConnect();
          System.out.println("inside dao email  : "+obj.getEmail());
          String query = "insert into recruiter(name,recruiter,email,password,contact,address,status) values(?,?,?,?,?,?,?)";
          try
          {
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1,obj.getName());
             System.out.println("name : "+obj.getName());

             ps.setString(2,obj.getRecruiter());
             System.out.println("email : "+obj.getEmail());
             ps.setString(3,obj.getEmail());
             ps.setString(4,obj.getPassword());
                      System.out.println("password : "+obj.getPassword());

             ps.setString(5,obj.getContact());
             ps.setString(6,obj.getAddress());
             ps.setString(7,"false");
            
             i = ps.executeUpdate();
             con.close();
          }catch(SQLException e)
          {
              System.out.println("Exception here: "+e);
          }
        return i;        
    }
    public ArrayList<RecruiterDto> getRecruiterList()
    {
        ArrayList<RecruiterDto> list = new ArrayList<>();
        Connection con = MyConnection.getConnect();
          String query = "select * from recruiter";
          try
          {
             PreparedStatement ps = con.prepareStatement(query);
             
             ResultSet rs = ps.executeQuery();
             while(rs.next()){
                 RecruiterDto recruiter = new RecruiterDto();
                 recruiter.setName(rs.getString(1));
                 recruiter.setRecruiter(rs.getString(2));
                 recruiter.setEmail(rs.getString(3));
                 recruiter.setPassword(rs.getString(4));
                 recruiter.setContact(rs.getString(5));
                 recruiter.setAddress(rs.getString(6));
                 recruiter.setStatus(rs.getString(7));
                 list.add(recruiter);
             }
             con.close();
          }catch(SQLException e)
          {
              System.out.println("Exception here: "+e);
          }
        return list;
    }
    
    public RecruiterDto getTypeName(String email)
    {
        RecruiterDto recruiter = new RecruiterDto();
          Connection con = MyConnection.getConnect();
          String query = "select name,recruiter from recruiter where email=?";
          try
          {
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1,email);
             ResultSet rs = ps.executeQuery();
             if(rs.next())
             {
                 recruiter.setName(rs.getString(1));
                 recruiter.setRecruiter(rs.getString(2));
             }      
             con.close();
          }catch(SQLException e)
          {
              System.out.println("Exception : "+e);
          }
        return recruiter;
    }

}

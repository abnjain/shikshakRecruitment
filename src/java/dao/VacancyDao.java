package dao;
import java.util.*;
import java.sql.*;
import myconn.MyConnection;
import dto.VacancyDto;
public class VacancyDao 
{
    
    public int addVacancy(VacancyDto obj)
    {
        int i=0;
          Connection con = MyConnection.getConnect();
          String query = "insert into vacancy(post,subject,location,criteria,vacancy,salary,advdate,lastdate,email,recruiter,recruitername) values(?,?,?,?,?,?,?,?,?,?,?)";
          try
          {
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1,obj.getPost());
             ps.setString(2,obj.getSubject());
             ps.setString(3,obj.getLocation());
             ps.setString(4,obj.getCriteria());
             ps.setInt(5,obj.getVacancy());
             ps.setString(6,obj.getSalary());
             ps.setString(7,obj.getAdvdate());
             ps.setString(8,obj.getLastdate());
             ps.setString(9,obj.getEmail());
             ps.setString(10,obj.getRecruiter());
             ps.setString(11,obj.getRecruitername());

             i = ps.executeUpdate();
             con.close();
          }catch(SQLException e)
          {
              System.out.println("Exception here: "+e);
          }
        return i;        
    }

}

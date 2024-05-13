package dao;
import java.util.*;
import java.sql.*;
import myconn.MyConnection;
import dto.CandidateDto;
public class CandidateDao 
{
    
    public int candidateReg(CandidateDto obj)
    {
        int i=0;
          Connection con = MyConnection.getConnect();
          String query = "insert into candidate(fname,lname,email,password,gender,date,address,mobile,qualification,percentage,status) values(?,?,?,?,?,?,?,?,?,?,?)";
          try
          {
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1,obj.getFname());
             ps.setString(2,obj.getLname());
             ps.setString(3,obj.getEmail());
             ps.setString(4,obj.getPassword());
             ps.setString(5,obj.getGender());
             ps.setString(6,obj.getDate());
             ps.setString(7,obj.getAddress());
             ps.setString(8,obj.getMobile());
             ps.setString(9,obj.getQualification());
             ps.setString(10,obj.getPercentage());
             ps.setString(11,obj.getStatus());

             i = ps.executeUpdate();
             con.close();
          }catch(SQLException e)
          {
              System.out.println("Exception here: "+e);
          }
        return i;        
    }

}

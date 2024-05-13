<%@include file="admin_header.jsp" %>
<%@page import="dao.RecruiterDao" %>
<%@page import="dto.RecruiterDto" %>
<%@page import="java.util.*" %>

  <!-- ======= Hero Section ======= -->
  <section style="height:635px" id="hero" class="d-flex align-items-center">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Recruiter Name</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      <th scope="col">Address</th>
      <th scope="col">Status</th>

    </tr>
  </thead>
  <tbody>
      <%
      RecruiterDao dao = new RecruiterDao();
      ArrayList<RecruiterDto> list = dao.getRecruiterList();
      for(RecruiterDto recruiter : list){
      %>
      
    <tr>
      <th scope="row"><%=recruiter.getName()%></th>
      <td><%=recruiter.getRecruiter()%></td>
      <td><%=recruiter.getEmail()%></td>
      <td><%=recruiter.getContact()%></td>
      <td><%=recruiter.getAddress()%></td>
      <td><a href="adminupdaterecruiterstatus.jsp?email=<%=recruiter.getEmail()%>"><%=recruiter.getStatus()%></a></td>
    </tr>
    <%}%>
  </tbody>
  <tfoot>
          <tr>
      <th scope="col">Name</th>
      <th scope="col">Recruiter Name</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      <th scope="col">Address</th>
      <th scope="col">Status</th>

    </tr>

      
  </tfoot>
</table>
  </section><!-- End Hero -->
<%@include file="admin_footer.jsp" %>

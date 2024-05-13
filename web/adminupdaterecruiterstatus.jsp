<%@page import="dao.AdminDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
<%
  String email = request.getParameter("email");
  AdminDao dao = new AdminDao();
  int i = dao.updateRecruiterStatus(email);
  if(i>0){
%>
  <script>alert("Status Updated successfully");</script>
  <jsp:include page="admin_recruiter.jsp"></jsp:include>
<%}else{%>
  <script>alert("Error while updating status");</script>
  <jsp:include page="admin_recruiter.jsp"></jsp:include>

        <%}%>
    </body>
</html>

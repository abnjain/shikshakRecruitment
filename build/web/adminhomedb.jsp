<%@page import="dao.AdminDao" %>
        <%
          String email = request.getParameter("email");
          String password = request.getParameter("password");
          
          AdminDao admin1 = new AdminDao();
          int i = admin1.getAdminLogin(email,password);
          if(i>0){
          session.setAttribute("email",email);
        %>
            <script>alert("Login Successfully");</script>
            <jsp:include page="adminhome.jsp"></jsp:include>
        <%}else{%>
            <script>alert("Error while Login");</script>
            <jsp:include page="adminlogin.html"></jsp:include>        
        <%}%>
        %>

<%@page import="dao.RecruiterDao" %>
        <%
          String email = request.getParameter("email");
          String password = request.getParameter("password");
          
          RecruiterDao recruiter1 = new RecruiterDao();
          int i = recruiter1.getRecruiterLogin(email,password);
          if(i>0){
          session.setAttribute("email",email);
        %>
            <script>alert("Login Successfully");</script>
            <jsp:include page="recruiterhome.jsp"></jsp:include>
        <%}else{%>
            <script>alert("Contact Admin for Approve or Email Id Password is Wrong");</script>
            <jsp:include page="recruiterlogin.html"></jsp:include>        
        <%}%>
        %>

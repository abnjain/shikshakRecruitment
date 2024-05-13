<%@page import="dao.RecruiterDao" %>
<jsp:useBean id="obj" class="dto.RecruiterDto"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>    
<%
          RecruiterDao recruiter = new RecruiterDao();
          int i = recruiter.addRecruiter(obj);
          if(i>0){
        %>
            <script>alert("Registration Successfully");</script>
            <jsp:include page="recruiterlogin.html"></jsp:include>
        <%}else{%>
            <script>alert("Error while Registering Recruiter");</script>
            <jsp:include page="recruiterregistration.html"></jsp:include>        
        <%}%>
        %>

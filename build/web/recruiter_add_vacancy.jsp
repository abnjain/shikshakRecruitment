<%@page import="dao.VacancyDao" %>
<jsp:useBean id="obj" class="dto.VacancyDto"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>    
<%
          VacancyDao vacancy = new VacancyDao();
          int i = vacancy.addVacancy(obj);
          if(i>0){
        %>
            <script>alert("Vacancy Added Successfully");</script>
            <jsp:include page="add_vacancy.jsp"></jsp:include>
        <%}else{%>
            <script>alert("Error while adding vacancy");</script>
            <jsp:include page="add_vacancy.jsp"></jsp:include>        
        <%}%>
        %>

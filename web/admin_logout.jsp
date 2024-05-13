<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("email",null);
            session.invalidate();
            response.sendRedirect("index.html");
        %>
    </body>
</html>

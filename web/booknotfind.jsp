<%-- 
    Document   : booknotfind
    Created on : 17 Aug, 2024, 11:58:26 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Not Find</title>
    </head>
    <body>
        <%
            String bookname=(String)request.getAttribute("bookname");
            out.print("<p>Book "+bookname+" is not find in Db..Please Try with Different Book..</p>");
        %>
    </body>
</html>

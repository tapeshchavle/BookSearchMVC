<%-- 
    Document   : bookfind
    Created on : 18 Aug, 2024, 12:03:19 AM
    Author     : hp
--%>

<%@page import="org.apache.tomcat.websocket.PojoHolder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Find Jsp</title>
    </head>
    <body>
       <%
           java.util.ArrayList <in.model.pojo.Book> book=(java.util.ArrayList <in.model.pojo.Book>)request.getAttribute("bookname");
           
           out.println("<table border ='2px'>");
           out.println("<tr><th>BookId</th><th>BookName</th><th>Price</th><th>Subject</th></tr>");
           for(in.model.pojo.Book b:book){
               
               out.println("<tr><td>"+b.getBookid()+"</td><td>"+b.getBookname()+"</td><td>"+b.getBookprice()+"</td><td>"+b.getSubject()+"</td></tr>");
               
           }
           out.println("</table>");
           
       %>
    </body>
</html>

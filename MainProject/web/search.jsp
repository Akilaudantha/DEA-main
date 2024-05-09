<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@ page trimDirectiveWhitespaces="true" %>
<%@ page language="java" %>
<%@ page import="java.util.*" %>

<%-- Add the @MultipartConfig annotation to enable handling multipart requests --%>
<%@ page import="java.io.InputStream" %>
<%@ page import="javax.servlet.annotation.MultipartConfig" %>
<%@ page import="javax.servlet.http.Part" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
       <% String search=request.getParameter("search");
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/maindea";
       Connection con=DriverManager.getConnection(url,"root","");
       Statement st=con.createStatement();
       
       String q1="SELECT * FROM Shoe";
       
       %>
       
       
      
      
       
</html>

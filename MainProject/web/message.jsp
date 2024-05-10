<%-- 
    Document   : message
    Created on : May 10, 2024, 9:59:12 AM
    Author     : DELL Latitude 7400
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User messages</title>
        <style>
        body{
            background-image: url('Image/login.jpg');
        }
        table{
            background-color: white;
            padding-left: 50px;
        }
        button {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
            background-color: red;
            color: white;
            cursor: pointer;
            width: 120px;
        }

        button:hover {
            background-color: #0056b3;
        }

        thead{
            background-color: black;
            color: white;
            font-weight: bold;
        }

    </style>
    </head>
    <body>
       <h1 style=" text-align: center; font-weight: bold; color: red;">User Messages</h1>
<table border="1" style="width: 100%; height: 100%; border-collapse: collapse;">
    <thead>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Phone</th>
    <th>Email</th>
    <th>Message</th>
    </thead>

     <%
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/mainDEA";
            Connection con=DriverManager.getConnection(url,"root","");
            Statement st=con.createStatement();
            String q1="SELECT * FROM Help";
            ResultSet rs1=st.executeQuery(q1);
            while (rs1.next())
            {%>
<tr>
    <td><center><%= rs1.getString("FirstName") %></center></td>
    <td><center><%= rs1.getString("LastName") %></center></td>
    <td><center><%= rs1.getString("Phone") %></center></td>
    <td><center><%= rs1.getString("Email") %></center></td>
    <td><center><%= rs1.getString("Message") %></center></td>
</tr>
<% } %>

</table>
    </body>
</html>

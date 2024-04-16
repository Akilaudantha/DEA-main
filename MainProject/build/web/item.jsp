<%-- 
    Document   : item
    Created on : Apr 16, 2024, 3:45:46 AM
    Author     : MSI KATANA
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
     <%@ page import="javax.servlet.annotation.MultipartConfig" %>
      
    
        
        

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Item</title>
    </head>
    <body>
        <%
            String inum=request.getParameter("inum");
            String iname=request.getParameter("iname");
            String iprice=request.getParameter("iprice");
            String idescrip=request.getParameter("idescrip");
             
       
        
           Part iimage= request.getPart("iimage");
          

        InputStream inputStream = iimage.getInputStream();
           
           
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/mainDEA";
            Connection con=DriverManager.getConnection(url,"root","");
            Statement st=con.createStatement();
             /*String q1="INSERT INTO Item VALUES('"+inum+"','"+iname+"','"+iprice+"','"+idescrip+"','"+iimage+"')";
             st.executeUpdate(q1);*/
             String sql = "INSERT INTO Item VALUES('"+inum+"','"+iname+"','"+iprice+"','"+idescrip+"','(?)')";
PreparedStatement statement = con.prepareStatement(sql);
statement.setBinaryStream(1, inputStream);
 st.executeUpdate(sql);

             
            
            %>
            
        
    </body>
</html>

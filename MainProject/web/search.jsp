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
       Statement st2=con.createStatement();
       String q1="SELECT * FROM Shoes";
       String q2="SELECT * FROM Clothes";
       String q3="SELECT * FROM Acc";
       
       ResultSet rs1=st.executeQuery(q1);
        ResultSet rs2=st2.executeQuery(q2);
        //ResultSet rs3=st.executeQuery(q3);
        
       while(rs1.next())
       {
           
               String q4="SELECT * FROM Shoes WHERE ItemName='"+search+"'";
               ResultSet rs4=st2.executeQuery(q4);
               
               while(rs4.next())
               {%>
               <div class="card"  onmousemove="this.style.backgroundColor='black'; this.style.color='white';" onmouseout="this.style.backgroundColor = 'white';this.style.color='black';" >
                 <% 
                byte[] imageData = rs4.getBytes("Image");
                String base64Image = Base64.getEncoder().encodeToString(imageData);
                
                 %>
                 <img src="data:image/png;base64,<%= base64Image %>" width="255" height="280" />
                <center><form action="AddCart" method="post"><h3><%=rs4.getString("ItemName") %><input type="hidden" name="name" value="<%=rs4.getString("ItemName") %>" /></h3>
                        
                <p><%= rs4.getString("Description") %></p><input type="hidden" name="des" value="<%=rs4.getString("Description") %>" />
                <h5>Rs.<%= rs4.getString("Price") %></h5><input type="hidden" name="price" value="<%=rs4.getString("Price") %>" />
                
                    <button style=" border-radius: 4px; width: 100px; background-color: #cccccc; font-weight: bold; border: 0; " type="submit" onmousemove="this.style.backgroundColor = '#2a38ec'; this.style.color='white';" onmouseout="this.style.backgroundColor = '#cccccc'; this.style.color='black';">Add to Cart</button></form></center>
                
                </div>
               
                <%   
               
           }
break;
       }
       while(rs2.next())
       {
           
               String q4="SELECT * FROM Clothes WHERE ItemName='"+search+"'";
               ResultSet rs4=st2.executeQuery(q4);
               
               while(rs4.next())
               {%>
               <div class="card"  onmousemove="this.style.backgroundColor='black'; this.style.color='white';" onmouseout="this.style.backgroundColor = 'white';this.style.color='black';" >
                 <% 
                byte[] imageData = rs4.getBytes("Image");
                String base64Image = Base64.getEncoder().encodeToString(imageData);
                
                 %>
                 <img src="data:image/png;base64,<%= base64Image %>" width="255" height="280" />
                <center><form action="AddCart" method="post"><h3><%=rs4.getString("ItemName") %><input type="hidden" name="name" value="<%=rs4.getString("ItemName") %>" /></h3>
                        
                <p><%= rs4.getString("Description") %></p><input type="hidden" name="des" value="<%=rs4.getString("Description") %>" />
                <h5>Rs.<%= rs4.getString("Price") %></h5><input type="hidden" name="price" value="<%=rs4.getString("Price") %>" />
                
                    <button style=" border-radius: 4px; width: 100px; background-color: #cccccc; font-weight: bold; border: 0; " type="submit" onmousemove="this.style.backgroundColor = '#2a38ec'; this.style.color='white';" onmouseout="this.style.backgroundColor = '#cccccc'; this.style.color='black';">Add to Cart</button></form></center>
                
                </div>
               
                <%   
               
           }
break;
       }

       
       %>
       
       
      
      
       
</html>

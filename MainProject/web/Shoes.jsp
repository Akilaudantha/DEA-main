<%-- 
    Document   : Home
    Created on : Apr 14, 2024, 1:49:14 AM
    Author     : Akila Udantha
--%>
<%@ page import="java.io.*,java.sql.*,javax.servlet.http.*,javax.servlet.*,javax.servlet.annotation.MultipartConfig" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page language="java" %>
<%@ page import="java.util.*" %>

<%-- Add the @MultipartConfig annotation to enable handling multipart requests --%>
<%@ page import="java.io.InputStream" %>
<%@ page import="javax.servlet.annotation.MultipartConfig" %>
<%@ page import="javax.servlet.http.Part" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.io.PrintWriter" %>

<%-- Configure the multipart configuration --%>
<%-- The maxFileSize attribute sets the maximum size of a file upload (in bytes) --%>
<%-- The maxRequestSize attribute sets the maximum size allowed for a multipart/form-data request (in bytes) --%>
<%-- Adjust these values according to your requirements --%>
<%@ page import="javax.servlet.annotation.MultipartConfig" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <title>Home</title>
        
        <style>
            .pimage{
                width: 20px;
                height: 10px;
            }
        
        .menu {
            background-color: black;
            color: #fff;
            padding: 10px;
        }
        .menu ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            text-align: left;
        }
        .menu li {
            display: inline-block;
            margin-right: 20px;
        }
        .menu a {
            text-decoration: none;
            color: #fff;
        }
        .search-container {
            margin-top: 20px;
            text-align: center;
        }
        .search-input {
            padding: 8px 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 550px;
            height: 40px;
            max-width: 100%;
            align-content: center;
            text-align: center;
        }
        .search-button {
            padding: 8px 12px;
            border: 1px solid #007bff;
            background-color: #007bff;
            color: #fff;
            border-radius: 4px;
            cursor: pointer;
        }
        .out-button{
            padding: 8px 12px;
            border: 1px solid #007bff;
            background-color: #007bff;
            color: #fff;
            border-radius: 4px;
            cursor: pointer;
            align-content:  space-around;
        }
        .categ{
            background-color: black;
            color: #fff;
        }
        .flex-container {
        display: flex;
    }
    .flex-item {
        flex: 1; /* Divide into two equal parts */
        background-color: black;
        color: white;
        padding: 20px;
        border: 1px solid #ccc;
    }
    .flex-footer{
        flex: 2; 
        
        
        
    }
    .card {
       
        border: 0;
        border-radius: 8px;
        padding: 20px;
        width: 295px;
        height: 450px;
       
        background-color: #fff;
        margin: 20px;
    }

  
    .card h3 {
        margin-top: 0;
    }

   
    .card p {
        margin-bottom: 0;
    }
    .footer{
        height: 250px;
        background-color: black;
        width: 100%;
    }
        
    </style>
</head>
<body>
    <nav class="menu">
        <ul>
            <li><a href="Home.jsp"><img src="Image/login.jpg" height="50" width="50"></a></li>
            <li>
                <select class="categ">
                    <option disabled style="color: gray;">Select Category</option>
                    <option>Shoes</option>
                    <option>Clothes</option>
                </select>
            </li>
            <li><a href="#">Help & Services</a></li>
            <li><a href="#">About Us</a></li>
            <li> <form action="search.jsp" method="post">
                    <input style=" border: 0; background-color: #333333; color: #b3b3b3;"  type="text" name="search" class="search-input" placeholder="Search here ">
                    <button type="submit" onmousemove="this.style.backgroundColor = '#2a38ec'; this.style.color='white';" onmouseout="this.style.backgroundColor = '#333333'; this.style.color='white';" class="search-button"  style=" background-color: #333333; border: 0; ">Search</button>
                </form>
            </li>
            <li></li>
            <li><a href="Cart.jsp"><img src="Image/cart.png"  height="30" width="30"></a></li>
            <li><form action="index.html">
                    <button style=" background-color: #a2090c; border: 0; font-size: 12px; width: 70px; height: 35px; "  type="submit" class="out-button">Log Out</button>
                </form>
            </li>
        </ul>
    </nav>
    
    <div style=" background-color: black">
    
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" height="100%" width="100%" src="Image/login.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" height="100%" width="100%" src="Image/form.jpg" alt="Second slide">
            </div>
            <%--<div class="carousel-item">
                <img class="d-block w-100" src="image3.jpg" alt="Third slide">
            </div>--%>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
        
        
    </div>
        
        
        <div style=" background-color: black;">
        <div class="container">
        <div class="flex-container">
            <div class="flex-item" style=" border: 0;"><img  src="Image/form.jpg" width="100%" height="100%"></div>
            <div class="flex-item" style=" border: 0;"><br><br><h3 style=" text-align: center;">100% Sri Lankan</h3>
                <p style=" text-align: center;">dgfiuoregfiolgjlsdhklg fghrfghdsfig riughoirehgiubsdflg ioghibfsdogbodsfgl</p></div>
        </div></div></div>
            <div class="flex-container">
                <div class="flex-item" style=" border: 0;"><a href="Shoes.jsp"><img  src="Image/form.jpg" width="100%" height="100%"></a></div>
                <div class="flex-item" style=" border: 0;"><a href="Shoes.jsp"><img  src="Image/form.jpg" width="100%" height="100%"></a></div>
</div>
            
            <br>
            
            <hr>
        
            
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    String url="jdbc:mysql://localhost:3306/mainDEA";
                    Connection con=DriverManager.getConnection(url,"root","");
                    Statement st1=con.createStatement();
                    
                    String q1="SELECT*FROM Shoes";
                    ResultSet rs1=st1.executeQuery(q1);
                    Statement st2=con.createStatement();
                    String q2="SELECT * FROM Clothes";
                    ResultSet rs2=st2.executeQuery(q2);
                    int a=0;
                    %>
                    
                    <table>
                        <tr>
                            <%while(a < 2 && rs1.next() && rs2.next() )
                     {%>
                    
                    <td><div class="card"  onmousemove="this.style.backgroundColor='black'; this.style.color='white';" onmouseout="this.style.backgroundColor = 'white';this.style.color='black';" >
                 <% 
                byte[] imageData = rs1.getBytes("Image");
                String base64Image = Base64.getEncoder().encodeToString(imageData);
                
                 %>
                 <img src="data:image/png;base64,<%= base64Image %>" width="100%" height="100%" />
                <center><h3><%=rs1.getString("ItemName") %></h3>
                <p><%= rs1.getString("Description") %></p>
                <h5>Rs.<%= rs1.getString("Price") %></h5>
                <form action="Shoes.jsp">
                    <button style=" border-radius: 4px; width: 100px; background-color: #cccccc; font-weight: bold; border: 0; " type="submit" onmousemove="this.style.backgroundColor = '#2a38ec'; this.style.color='white';" onmouseout="this.style.backgroundColor = '#cccccc'; this.style.color='black';">View more</button></center>
                </form>
                </div></td>

                <td><div class="card"  onmousemove="this.style.backgroundColor='black'; this.style.color='white';" onmouseout="this.style.backgroundColor = 'white';this.style.color='black';">
                 <% 
                byte[] iData = rs2.getBytes("Image");
                String base64 = Base64.getEncoder().encodeToString(iData);
                 %>
                 <img src="data:image/png;base64,<%= base64 %>" width="100%" height="100%" />
                <center><h3><%= rs2.getString("ItemName") %></h3>
                <p><%= rs2.getString("Description") %></p>
                <h5>Rs.<%= rs2.getString("Price") %></h5>
                <form action="Clothes.jsp">
                    <button style=" border-radius: 4px; width: 100px; background-color: #cccccc; font-weight: bold; border: 0; " type="submit" onmousemove="this.style.backgroundColor = '#2a38ec'; this.style.color='white';" onmouseout="this.style.backgroundColor = '#cccccc'; this.style.color='black';">View more</button></center>
                </form>
                </div></td>
                    
                     <% a++;  
                    }
                    %>
                     </tr>
                     
                     <%a=0;%>
                     <tr>
                           <%while(a < 2 && rs1.next() && rs2.next() )
                     {%>
                    
                    <td><div class="card"  onmousemove="this.style.backgroundColor='black'; this.style.color='white';" onmouseout="this.style.backgroundColor = 'white';this.style.color='black';" >
                 <% 
                byte[] imageData = rs1.getBytes("Image");
                String base64Image = Base64.getEncoder().encodeToString(imageData);
                
                 %>
                 <img src="data:image/png;base64,<%= base64Image %>" width="100%" height="100%" />
                <center><h3><%=rs1.getString("ItemName") %></h3>
                <p><%= rs1.getString("Description") %></p>
                <h5>Rs.<%= rs1.getString("Price") %></h5>
                <form action="Shoes.jsp">
                    <button style=" border-radius: 4px; width: 100px; background-color: #cccccc; font-weight: bold; border: 0; " type="submit" onmousemove="this.style.backgroundColor = '#2a38ec'; this.style.color='white';" onmouseout="this.style.backgroundColor = '#cccccc'; this.style.color='black';">View more</button></center>
                </form>
                </div></td>

                <td><div class="card"  onmousemove="this.style.backgroundColor='black'; this.style.color='white';" onmouseout="this.style.backgroundColor = 'white';this.style.color='black';">
                 <% 
                byte[] iData = rs2.getBytes("Image");
                String base64 = Base64.getEncoder().encodeToString(iData);
                 %>
                 <img src="data:image/png;base64,<%= base64 %>" width="100%" height="100%" />
                <center><h3><%= rs2.getString("ItemName") %></h3>
                <p><%= rs2.getString("Description") %></p>
                <h5>Rs.<%= rs2.getString("Price") %></h5>
                <form action="Clothes.jsp">
                    <button style=" border-radius: 4px; width: 100px; background-color: #cccccc; font-weight: bold; border: 0; " type="submit" onmousemove="this.style.backgroundColor = '#2a38ec'; this.style.color='white';" onmouseout="this.style.backgroundColor = '#cccccc'; this.style.color='black';">View more</button></center>
                </form>
                </div></td>
                    
                     <% a++;  
                    }
                    %>
                     </tr>
                     
                     </table>
        
                     <div class="footer">
                        <div class="flex-container">
                            <div class="flex-footer">
                                <div class=" container"><br>
                                    <br>
                                    <div  style=" padding-left: 20px;">
                                    <a href="AboutUs.html">About Us</a><br><br>
                                    <p style="color:white;">Contact Us<br><br>
                                        <a href="#">Email Us</a><br><br>
                                        0112345678 / 0335869568</p></div></div>
                            </div>
                            <div class="flex-footer"  style="text-align:center;"><div class=" container"><br>
                                    <br><br><img src="Image/login.jpg" width="200px" height="100px"></div></div>
                            <div class="flex-footer"  style="text-align: right; "><div class=" container"><div  style=" padding-right: 20px;"><br>
                                        <br><a href="AboutUs.html">About Us</a></div></div></div>
                        </div>
                     </div>
                      <footer style="text-align: center; color: white; background-color: black;">© 2024 ABC Company. All rights reserved.
</footer>
        <%--<%// Establish the connection to your database
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/mainDEA";
        
        Connection conn = DriverManager.getConnection(url, "root", "");
        
        
        
        
        Statement s = conn.createStatement();
        
        String sql = "SELECT * FROM Clothes";
        
        ResultSet rs=s.executeQuery(sql);
        
        while (rs.next())
        {
            
        byte[] imageData = rs.getBytes("Image");
        
       
        String base64Image = Base64.getEncoder().encodeToString(imageData);
        
         
        out.println("<tr><td><img src=\"data:image/png;base64," + base64Image + "\" /></td></tr>");
        
        }%>--%>
       
       
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
    
</html>

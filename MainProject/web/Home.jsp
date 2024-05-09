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
            position: fixed;
            z-index: 1000;
            width: 100%;
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
        flex: 1; 
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
    <script>
        function x()
        {
            if(document.fn.select.value==="Shoes")
            {
                window.location.href = "Shoes.jsp";
            }
            else if (document.fn.select.value==="Clothes")
            {
                window.location.href = "Clothes.jsp";
            }
            else if (document.fn.select.value==="Acc")
            {
                window.location.href = "Accessories.jsp";
            }
        }
        </script>
</head>
<body>
    <nav class="menu">
        <ul>
            <li><a href="Home.jsp"><img src="Image/logo.jpg" height="40" width="150"></a></li>
            <li><form name="fn" onchange="x()">
                    <select class="categ" name="select">
                <option disabled selected style="color: gray;">Select Category</option>
                <option value="Shoes">Shoes</option>
                <option value="Clothes">Clothes</option>
                <option value="Acc">Accessories</option>
                </select></form>
            </li>
            <li><a href="Help.html">Help & Services</a></li>
            <li><a href="aboutUs.html">About Us</a></li>
            <li> <form action="searchs" method="post">
                    <input style=" border: 0; background-color: #333333; color: #b3b3b3; width: 450px;"  type="text" name="search" class="search-input" placeholder="Search here ">
                    <button type="submit" onmousemove="this.style.backgroundColor = '#2a38ec'; this.style.color='white';" onmouseout="this.style.backgroundColor = '#333333'; this.style.color='white';" class="search-button"  style=" background-color: #333333; border: 0; ">Search</button>
                </form>
            </li>
            <li></li>
            <li><a href="Cart.jsp" style=" padding-left: 30px;"><img src="Image/cart.png"  height="45" width="45" style="  background-color: white; border-radius: 50px;"></a></li>
            <li><form action="index.html" style="padding-left: 5px; ">
                    <button style=" background-color: #a2090c; border: 0; font-size: 12px; width: 70px; height: 35px; "  type="submit" class="out-button">Log Out</button>
                </form>
            </li>
        </ul>
    </nav>
    
    <div style=" background-color: black; padding-top: 50px;" >
    
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" height="100%" width="100%" src="Image/cr1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" height="100%" width="100%" src="Image/cr2.jpg" alt="Second slide">
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
            <div class="flex-item" style=" border: 0;"><img  src="Image/logo.jpg" width="100%" height="100%"></div>
            <div class="flex-item" style=" border: 0;"><br><br><h3 style=" text-align: center;">100% Sri Lankan</h3>
                <p style=" text-align: center;">100% Sri Lankan shoes and clothes are a vibrant reflection of the island's rich heritage, blending traditional craftsmanship with modern style. They feature intricate designs, vibrant colors, and high-quality local materials, embodying the essence of Sri Lanka's cultural diversity and artisanal excellence.</p></div>
        </div></div></div>
            <div class="flex-container">
                <div class="flex-item" style=" border: 0;"><a href="Shoes.jsp"><img  src="Image/A1.jpg" width="100%" height="100%"></a></div>
                <div class="flex-item" style=" border: 0;"><a href="Clothes.jsp"><img  src="Image/A2.jpg" width="100%" height="100%"></a></div>
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
                                        <a href="aboutUs.html">Email Us</a><br><br>
                                        0112345678 / 0335869568</p></div></div>
                            </div>
                            <div class="flex-footer"  style="text-align:center;"><div class=" container"><br>
                                    <br><br><a href="Home.jsp"><img src="Image/logo.jpg" style=" width:250px; height:100px; border-radius: 8px;"></a></div></div>
                            <div class="flex-footer"  style="text-align: right; "><div class=" container"><div  style=" padding-right: 20px;"><br>
                                        <br><p style="color: white;">Follow us</p>
                                        
                                        
                                        <a href="#"> <img src="Image/fb.JPG" style=" border-radius: 100px; height: 35px; width: 35px; margin-right: 20px;"></a>
                                        <a href="#">    <img src="Image/ins.JPG" style=" border-radius: 500px; height: 35px; width: 35px; margin-right: 20px;"></a>
                                        <a href="#">    <img src="Image/wh.JPG" style=" border-radius: 500px; height: 35px; width: 35px; "></a>
                                        <br><br><br>
                                         <p style="color: white;">Payment Methods</p>
                                         
                                         <img src="Image/p1.JPG" style="  height: 40px; width: 65px; margin-right: 20px;">
                                         <img src="Image/p2.JPG" style="  height: 40px; width: 65px; margin-right: 20px;">
                                         <img src="Image/p3.JPG" style="  height: 40px; width: 65px; ">
                                    </div></div></div>
                        </div>
                     </div>
                      <footer style="text-align: center; color: white; background-color: black; font-size: 11px;">© 2024 Mr.Style. All rights reserved.
</footer>
        
       
       
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
    
</html>

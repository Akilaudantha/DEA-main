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
        background-color: white;
        padding: 20px;
        border: 1px solid #ccc;
    }
    .card {
        border: 1px solid #ccc;
        border-radius: 8px;
        padding: 20px;
        width: 235px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        background-color: #fff;
        margin: 20px;
    }

  
    .card h3 {
        margin-top: 0;
    }

   
    .card p {
        margin-bottom: 0;
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
                    <input type="text" name="search" class="search-input" placeholder="Search here ">
                    <button type="submit" class="search-button">Search</button>
                </form>
            </li>
            <li></li>
            <li><a href="Cart.jsp"><img src="Image/cart.png"  height="30" width="30"></a></li>
            <li><form action="index.html">
                    <button type="submit" class="out-button">Sign Out</button>
                </form>
            </li>
        </ul>
    </nav>
    <br>
    <br>
    <div class="container">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" height="500" width="550" src="Image/login.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" height="500" width="550" src="Image/form.jpg" alt="Second slide">
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
        <br>
        
        </div>
        
        <br>
        
        <div class="container">
        <div class="flex-container">
            <div class="flex-item"><a href="Shoes.jsp"><img src="Image/form.jpg" width="515" height="200"></a></div>
            <div class="flex-item"><a href="Clothes.jsp"><img src="Image/login.jpg" width="515" height="200"></a></div>
</div>
            <br>
            
            <hr>
        
            <table>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    String url="jdbc:mysql://localhost:3306/mainDEA";
                    Connection con=DriverManager.getConnection(url,"root","");
                    Statement st=con.createStatement();
                    String q1="SELECT*FROM Shoes";
                    ResultSet rs1=st.executeQuery(q1);
                    
                    int a=0;
                    while(rs1.next())
                    {%>
                    <tr><td><%=rs1.getString("ItemName")%></td></tr>
                  
                        
                    <%}
                    %>
            </table>
            <table>
                <tr><td><div class="card">
        <h3>Card Title 1</h3>
        <p>This is some sample content inside the card. You can put any text or other HTML elements here.</p>
                        </div></td>
                        <td><div class="card">
        <h3>Card Title 2</h3>
        <p>This is some sample content inside the card. You can put any text or other HTML elements here.</p>
                            </div></td>
                            <td>  <div class="card">
        <h3>Card Title 3</h3>
        <p>This is some sample content inside the card. You can put any text or other HTML elements here.</p>
                                </div></td>
                                 <td>  <div class="card">
        <h3>Card Title 3</h3>
        <p>This is some sample content inside the card. You can put any text or other HTML elements here.</p>
                                </div></td>
                </tr>
            </div>
        
            </table>
        <table>

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
       
       
        </table>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
    
</html>


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
<html><div style=" background-color: black;">
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
            <li><a href="Cart.jsp"><img src="Image/cart.png"  height="45" width="45" style=" background-color: white; border-radius: 50px;"></a></li>
            <li><form action="index.html">
                    <button style=" background-color: #a2090c; border: 0; font-size: 12px; width: 70px; height: 35px; "  type="submit" class="out-button">Log Out</button>
                </form>
            </li>
        </ul>
    </nav>
    <div style="background-color: black; padding: 20px;">
  
    <div style="background-color: black; padding: 20px;">
        <p> <h1><b><font color="red">MEN SHOES</font></b></h1> </p>  </div>
<br>
    <div class="row">
        
        <div class="col-md-4">
           <div class="card">
    <img class="card-img-top" src="Image/1.1.png" alt="First slide">
    <div class="card-body">
        <p class="card-text">Description for the first image.</p>
        <br>
        <center><a href="your-purchase-link.html" class="btn btn-primary">Purchase</a></center> 
    </div>
</div>

        </div>

        <!-- Card for the second image -->
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="Image/11.png" alt="Second slide">
                <div class="card-body">
                    <p class="card-text">Description for the second image.</p>
                     <br>
        <center><a href="your-purchase-link.html" class="btn btn-primary">Purchase</a></center> 
                </div>
            </div>
        </div>

        <!-- Card for the third image (example added) -->
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="Image/5.png" alt="Third slide"> <!-- Change src to your actual image path -->
                <div class="card-body">
                    <p class="card-text">Description for the third image.</p>
                     <br>
        <center><a href="your-purchase-link.html" class="btn btn-primary">Purchase</a></center> 
                </div>
            </div>
        </div>
    </div>
</div>


        
        
        <div style=" background-color: black;">
        <div class="container">
        <div class="flex-container">
            <div class="flex-item" style=" border: 0;"><img  src="Image/5.png" width="100%" height="100%"></div>
            <div class="flex-item" style=" border: 0;"><br><br><br><br><br><h3 style=" text-align: center;"> <font color="red">100% Sri</font><font color="yellow">  Lan</font><font color="green">ka</font></h3>
                <p style=" text-align: center;"><h4><font color="green">Welcome to our shoe collection! Step into style with our latest designs 
                    crafted for comfort and elegance. From classic sneakers to trendy boots, each pair is a statement of quality and fashion. 
                    Explore our collection today and find the perfect fit for every occasion</font></h4></p></div>
        </div></div></div>
           <div style="background-color: black; padding: 20px;">
    <div class="row">
        <!-- Card for the first image -->
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="Image/1.1.png" alt="First slide">
                <div class="card-body">
                    <p class="card-text">Description for the first image.</p>
                     <br>
        <center><a href="your-purchase-link.html" class="btn btn-primary">Purchase</a></center> 
                </div>
            </div>
        </div>

        <!-- Card for the second image -->
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="Image/11.png" alt="Second slide">
                <div class="card-body">
                    <p class="card-text">Description for the second image.</p>
                     <br>
        <center><a href="your-purchase-link.html" class="btn btn-primary">Purchase</a></center> 
                </div>
            </div>
        </div>

        <!-- Card for the third image (example added) -->
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="Image/11.png" alt="Third slide"> <!-- Change src to your actual image path -->
                <div class="card-body">
                    <p class="card-text">Description for the third image.</p>
                     <br>
        <center><a href="your-purchase-link.html" class="btn btn-primary">Purchase</a></center> 
                </div>
            </div>
        </div>
    </div>
</div>

            
    <br><div style="background-color: black; padding: 20px;">
        <p> <h1><b><font color="red">MEN SLIDERS</font></b></h1> </p>  </div><br>
        <div class="row">
    <div class="col-md-4">
        <div class="card">
            <img class="card-img-top" src="Image/07.jpg" alt="Second slide">
            <div class="card-body">
                <p class="card-text">Description for the second image.</p>
                 <br>
        <center><a href="your-purchase-link.html" class="btn btn-primary">Purchase</a></center> 
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card">
            <img class="card-img-top" src="Image/89.png" alt="Third slide">
            <div class="card-body">
                <p class="card-text">Description for the third image.</p>
                 <br>
        <center><a href="your-purchase-link.html" class="btn btn-primary">Purchase</a></center> 
            </div>
        </div>
    </div>
</div>
<br>
            
            
            
            
              
        
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
                                    <br><br><a href="Home.jsp"><img src="Image/login.jpg" width="200px" height="100px"></a></div></div>
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
                      <footer style="text-align: center; color: white; background-color: black; font-size: 11px;">© 2024 ABC Company. All rights reserved.
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
</div>
    
</html>

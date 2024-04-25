<%-- 
    Document   : Cart
    Created on : Apr 23, 2024, 3:30:46 PM
    Author     : Akila Udantha
--%>
<%@page import="javax.validation.constraints.Null"%>
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
<%@page import="java.sql.*" %>


<%@ page import="javax.servlet.annotation.MultipartConfig" %>


<!DOCTYPE html>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <title>Cart</title>
        
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
       
    .footer{
        height: 250px;
        background-color: black;
        width: 100%;
    }
    .sim{
        padding-top: 120px;
        
    }
    td{
        padding-top: 30px;
        padding-bottom: 30px;
        padding-left: 80px;
        padding-right: 80px; 
    }
    th
    {
        padding-top: 30px;
        padding-bottom: 30px;
        padding-left: 80px;
        padding-righ: 80px; 
    }
    input{
        background-color: grey;
        border-radius: 5px;
        border: 1;
        border-color: white;
        height: 30px;
        weight:500px;
    } 
    
    label{
        font-weight: bold;
        padding-right: 50px;
        
    }
       button {
            width: 90px;
            height: 45px;
            padding: 10px;
            margin-bottom: 10px;
            border: 1;
            border-color: white;
            border-radius: 6px;
            
            
       }
       button {
            background-color: black;
            color: white;
            cursor: pointer;
            
            
        }

        button:hover {
            background-color: #0056b3;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button {
            
            background-color: red;
            color: white;
            cursor: pointer;
            width: 120px;
            height: 100%;
            text-align: center;
            
            
        }

        button:hover {
            background-color: #0056b3;
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
        }
        </script>
</head>
<body style=" color:black; ">
    <nav class="menu">
        <ul>
            <li><a href="Home.jsp"><img src="Image/logo.jpg" height="40" width="150"></a></li>
            <li><form name="fn" onchange="x()">
                    <select class="categ" name="select">
                <option disabled selected style="color: gray;">Select Category</option>
                <option value="Shoes">Shoes</option>
                <option value="Clothes">Clothes</option>
                </select></form>
            </li>
           
            <li><a href="#">About Us</a></li>
            <li> <form action="search.jsp" method="post">
                    <input style=" border: 0; background-color: #333333; color: #b3b3b3; width: 450px;"  type="text" name="search" class="search-input" placeholder="Search here ">
                    <button type="submit" onmousemove="this.style.backgroundColor = '#2a38ec'; this.style.color='white';" onmouseout="this.style.backgroundColor = '#333333'; this.style.color='white';" class="search-button"  style=" background-color: #333333; border: 0; height: 42px; ">Search</button>
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
        
    <%
        

        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/mainDEA";
        Connection con=DriverManager.getConnection(url,"root","");
        Statement st=con.createStatement();
        

        String qu="SELECT * FROM Cart";
        ResultSet rs=st.executeQuery(qu);
        
        float total=0.00f;
        
        
    %>
       
            
        
<center style=" padding-top: 50px; padding-bottom: 500px; "><table>
        <thead ><tr><th><h4>Item</h4></th><th><h4>Name</h4></th><th><h4>Description</h4></th><th><h4>Price</h4></th></tr></thead>
        <%
          
            while(rs.next())
        {
            
            
        %>
        
        <tr>
            <td><% 
                byte[] imageData = rs.getBytes("Image");
                String base64 = Base64.getEncoder().encodeToString(imageData);
                 %>
        <center> <img src="data:image/png;base64,<%= base64 %>" width="80px" height="60px" /></center></td><td><%=rs.getString("ItemName")%></td><td><%=rs.getString("Description")%></td><td><%=rs.getString("Price")%></td><td><form action="DCart" method="post"><button type="submit">Delete</button><input type="hidden" name="name" value="<%=rs.getString("ItemName")%>"></form></td></tr>
        
        
        <%float price = rs.getFloat("Price");
        total += price; 
    }
            %>
        <tr><td></td><td></td><td></td><td><hr style=" background-color: black; width: 50px;"></td></tr>
        <% if (total==0)
        {%>
        <tr><td></td><td></td><td></td><td>Cart is Empty</td></tr>
        <%}
         if (total!=0)
        {%>
        <tr><td></td><td></td><td></td><td><%out.println(""+total);%></td></tr>
        <tr><td></td><td></td><td><a href="Payment.html"><button type="submit" style=" width: 200px;">Go to Payment</button></a></td></tr>
        <%}%>
    </table></center>
    
   
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

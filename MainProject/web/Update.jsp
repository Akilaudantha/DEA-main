<%-- 
    Document   : Update
    Created on : Apr 20, 2024, 2:12:43 AM
    Author     : Akila Udantha
--%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.* "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
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
        }

        button {
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
        
        <h1 style=" text-align: center; font-weight: bold; color: red;">Shoes Table</h1>
        <table border="1" style="width: 100%; height: 100%; border-collapse: collapse;" >
            <thead><th>Item Number</th><th>Item Name</th><th>Price</th><th>Description</th><th>Image</th></thead>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/mainDEA";
            Connection con=DriverManager.getConnection(url,"root","");
            Statement st=con.createStatement();
            String q1="SELECT * FROM Shoes";
            ResultSet rs1=st.executeQuery(q1);
            while (rs1.next())
            {%>
        <tr><td><center><%=rs1.getString("ItemNum")%></center></td><td><%=rs1.getString("ItemName")%></td><td><center><%=rs1.getString("Price")%></center></td><td><%=rs1.getString("Description")%></td><td><% 
                byte[] iData = rs1.getBytes("Image");
                String base64 = Base64.getEncoder().encodeToString(iData);
                 %>
        <center> <img src="data:image/png;base64,<%= base64 %>" width="80px" height="60px" /></center></td></tr>
            <%}%>
        </table>
        
        <h1 style=" text-align: center; font-weight: bold; color: red;">Clothes Table</h1>
        <table border="1" style="width: 100%; height: 100%; border-collapse: collapse;" >
            <thead><th>Item Number</th><th>Item Name</th><th>Price</th><th>Description</th><th>Image</th></thead>
            <%
                Statement st2=con.createStatement();
             String q2="SELECT * FROM Clothes";
             ResultSet rs2=st2.executeQuery(q2);
            while (rs2.next())
            {%>
        <tr><td><center><%=rs2.getString("ItemNum")%></center></td><td><%=rs2.getString("ItemName")%></td><td><center><%=rs2.getString("Price")%></center></td><td><%=rs2.getString("Description")%></td><td><% 
                byte[] imageData = rs2.getBytes("Image");
                String base64 = Base64.getEncoder().encodeToString(imageData);
                 %>
        <center> <img src="data:image/png;base64,<%= base64 %>" width="80px" height="60px" /></center></td></tr>
            <%}%>
    </table><br>
        
    <div class="b">
            
            <center> <form enctype="multipart/form-data" action="upItem" method="post" style="  width: 400px; background-color: white;"><hr style=" width: 400px; height: 5px; background-color: black; "><h1 style="text-align: center; color: red;">Update Form</h1>
            <table>
                <tr><td><label>Select Item Category</label></td><td><select name="cat"><option value="Shoes">Shoes</option>
                                                                                       <option value="Clothes">Cloths</option>
                                                                    </select></td></tr>
                
                <tr><td><label>Enter Item Code</label></td><td><input type="text" name="icode"></td></tr>
                
                <tr><td><label>What do you want to do</label></td><td><select name="update"><option value="update">Update</option>
                                                                                        <option value="delete">Delete</option>
                        </select></td></tr>
                
            </table>
                
                    <h4 style=" padding-left: 40px;">If you want to update data please fill all this form</h4>
                    
                    <table>
                        <tr><td><label>New Item Name</label></td><td><input type="text" name="iname"></td></tr>
                        <tr><td><label>New Item Price</label></td><td><input type="text" name="iprice"></td></tr>
                        <tr><td><label>New Item Description</label></td><td><textarea name="ide" style=" width: 170px;; height: 50px;"></textarea></td></tr>
                        <tr><td><label>Do you want change Image</label></td><td><select name="im"><option value="yes">Yes</option><option value="no">No</option></select></td></tr>
                        <tr><td></td><td><input type="file" name="image" accept="Image/*"></td></tr>
                        <tr><td style="padding-left: 25px; padding-top: 30px;"><button type="submit">Update</button></td><td style="padding-left: 25px; padding-top: 30px;"><button type="reset">Reset</button></td></tr>
                       
                    </table>
                    
                    <h3><a href="AdminHome.html">Back</a></h3>
                    <br><hr style=" width: 400px; height: 5px; background-color: black; "></form></center><br>
        </div>
        
        
    </body> 
</html>

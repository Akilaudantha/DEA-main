<%-- 
    Document   : Update
    Created on : Apr 20, 2024, 2:12:43 AM
    Author     : Akila Udantha
--%>
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
            
        </style>
    </head>
    <body>
        <h2 style=" text-align: center; font-weight: bold; color: red;">Shoes Table</h2>
        <table border="1" style="width: 100%; height: 100%" >
            <thead><th>Item Number</th><th>Item Name</th><th>Price</th><th>Description</th></thead>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/mainDEA";
            Connection con=DriverManager.getConnection(url,"root","");
            Statement st=con.createStatement();
            String q1="SELECT * FROM Shoes";
            ResultSet rs1=st.executeQuery(q1);
            while (rs1.next())
            {%>
            <tr><td><%=rs1.getString("ItemNum")%></td><td><%=rs1.getString("ItemName")%></td><td><%=rs1.getString("Price")%></td><td><%=rs1.getString("Description")%></td></tr>
            <%}%>
        </table>
        
        <h2 style=" text-align: center; font-weight: bold; color: red;">Clothes Table</h2>
        <table border="1" style="width: 100%; height: 100%" >
            <thead><th>Item Number</th><th>Item Name</th><th>Price</th><th>Description</th></thead>
            <%
                Statement st2=con.createStatement();
             String q2="SELECT * FROM Clothes";
             ResultSet rs2=st2.executeQuery(q2);
            while (rs2.next())
            {%>
            <tr><td><%=rs2.getString("ItemNum")%></td><td><%=rs2.getString("ItemName")%></td><td><%=rs2.getString("Price")%></td><td><%=rs2.getString("Description")%></td></tr>
            <%}%>
    </table><br>
        
    <div class="b">
            
            <center> <form action="upItem" method="post" style="  width: 400px; background-color: white;"><hr style=" width: 400px; height: 5px; background-color: black; "><h1 style="text-align: center;">Update Form</h1>
            <table>
                <tr><td><label>Select Item Category</label></td><td><select name="cat"><option value="Shoe">Shoes</option>
                                                                                       <option value="Clothes">Cloths</option>
                                                                    </select></td></tr>
                
                <tr><td><label>Enter Item Code</label></td><td><input type="text" name="icode"></td></tr>
                
                <tr><td><label>What do you want to do</label></td><td><select name="update"><option value="up">Update</option>
                                                                                        <option value="del">Delete</option>
                        </select></td></tr>
                <tr><td><button type="submit">Delete</button></td><td><button type="reset">Reset</button></td></tr>
            </table>
                
                    <h4>If you want to update data please fill all this form</h4>
                    
                    <table>
                        <tr><td><label>New Item Name</label></td><td><input type="text" name="iname"></td></tr>
                        <tr><td><label>New Item Price</label></td><td><input type="text" name="iprice"></td></tr>
                        <tr><td><label>New Item Description</label></td><td><textarea name="ide"></textarea></td></tr>
                        <tr><td><button type="submit">Update</button></td><td><button type="reset">Reset</button></td></tr>
                    </table>
               <br> <hr style=" width: 400px; height: 5px; background-color: black; "></form></center>
        </div>
        
        
    </body> 
</html>
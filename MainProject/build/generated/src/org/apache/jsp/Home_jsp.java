package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import java.util.*;
import java.io.InputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import java.sql.DriverManager;
import java.sql.Connection;
import java.io.PrintWriter;
import javax.servlet.annotation.MultipartConfig;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <title>Home</title>\r\n");
      out.write("        \r\n");
      out.write("        <style>\r\n");
      out.write("            .pimage{\r\n");
      out.write("                width: 20px;\r\n");
      out.write("                height: 10px;\r\n");
      out.write("            }\r\n");
      out.write("        \r\n");
      out.write("        .menu {\r\n");
      out.write("            background-color: black;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("            position: fixed;\r\n");
      out.write("            z-index: 1000;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("        }\r\n");
      out.write("        .menu ul {\r\n");
      out.write("            list-style-type: none;\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            text-align: left;\r\n");
      out.write("        }\r\n");
      out.write("        .menu li {\r\n");
      out.write("            display: inline-block;\r\n");
      out.write("            margin-right: 20px;\r\n");
      out.write("        }\r\n");
      out.write("        .menu a {\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("        }\r\n");
      out.write("        .search-container {\r\n");
      out.write("            margin-top: 20px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("        .search-input {\r\n");
      out.write("            padding: 8px 12px;\r\n");
      out.write("            border: 1px solid #ccc;\r\n");
      out.write("            border-radius: 4px;\r\n");
      out.write("            width: 550px;\r\n");
      out.write("            height: 40px;\r\n");
      out.write("            max-width: 100%;\r\n");
      out.write("            align-content: center;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("        .search-button {\r\n");
      out.write("            padding: 8px 12px;\r\n");
      out.write("            border: 1px solid #007bff;\r\n");
      out.write("            background-color: #007bff;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            border-radius: 4px;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("        }\r\n");
      out.write("        .out-button{\r\n");
      out.write("            padding: 8px 12px;\r\n");
      out.write("            border: 1px solid #007bff;\r\n");
      out.write("            background-color: #007bff;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            border-radius: 4px;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("            align-content:  space-around;\r\n");
      out.write("        }\r\n");
      out.write("        .categ{\r\n");
      out.write("            background-color: black;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("        }\r\n");
      out.write("        .flex-container {\r\n");
      out.write("        display: flex;\r\n");
      out.write("    }\r\n");
      out.write("    .flex-item {\r\n");
      out.write("        flex: 1; \r\n");
      out.write("        background-color: black;\r\n");
      out.write("        color: white;\r\n");
      out.write("        padding: 20px;\r\n");
      out.write("        border: 1px solid #ccc;\r\n");
      out.write("    }\r\n");
      out.write("    .flex-footer{\r\n");
      out.write("        flex: 2; \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("    }\r\n");
      out.write("    .card {\r\n");
      out.write("       \r\n");
      out.write("        border: 0;\r\n");
      out.write("        border-radius: 8px;\r\n");
      out.write("        padding: 20px;\r\n");
      out.write("        width: 295px;\r\n");
      out.write("        height: 450px;\r\n");
      out.write("       \r\n");
      out.write("        background-color: #fff;\r\n");
      out.write("        margin: 20px;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("    .card h3 {\r\n");
      out.write("        margin-top: 0;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("    .card p {\r\n");
      out.write("        margin-bottom: 0;\r\n");
      out.write("    }\r\n");
      out.write("    .footer{\r\n");
      out.write("        height: 250px;\r\n");
      out.write("        background-color: black;\r\n");
      out.write("        width: 100%;\r\n");
      out.write("    }\r\n");
      out.write("        \r\n");
      out.write("    </style>\r\n");
      out.write("    <script>\r\n");
      out.write("        function x()\r\n");
      out.write("        {\r\n");
      out.write("            if(document.fn.select.value===\"Shoes\")\r\n");
      out.write("            {\r\n");
      out.write("                window.location.href = \"Shoes.jsp\";\r\n");
      out.write("            }\r\n");
      out.write("            else if (document.fn.select.value===\"Clothes\")\r\n");
      out.write("            {\r\n");
      out.write("                window.location.href = \"Clothes.jsp\";\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("        </script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <nav class=\"menu\">\r\n");
      out.write("        <ul>\r\n");
      out.write("            <li><a href=\"Home.jsp\"><img src=\"Image/logo.jpg\" height=\"40\" width=\"150\"></a></li>\r\n");
      out.write("            <li><form name=\"fn\" onchange=\"x()\">\r\n");
      out.write("                    <select class=\"categ\" name=\"select\">\r\n");
      out.write("                <option disabled selected style=\"color: gray;\">Select Category</option>\r\n");
      out.write("                <option value=\"Shoes\">Shoes</option>\r\n");
      out.write("                <option value=\"Clothes\">Clothes</option>\r\n");
      out.write("                </select></form>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li><a href=\"#\">Help & Services</a></li>\r\n");
      out.write("            <li><a href=\"#\">About Us</a></li>\r\n");
      out.write("            <li> <form action=\"search.jsp\" method=\"post\">\r\n");
      out.write("                    <input style=\" border: 0; background-color: #333333; color: #b3b3b3; width: 450px;\"  type=\"text\" name=\"search\" class=\"search-input\" placeholder=\"Search here \">\r\n");
      out.write("                    <button type=\"submit\" onmousemove=\"this.style.backgroundColor = '#2a38ec'; this.style.color='white';\" onmouseout=\"this.style.backgroundColor = '#333333'; this.style.color='white';\" class=\"search-button\"  style=\" background-color: #333333; border: 0; \">Search</button>\r\n");
      out.write("                </form>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li></li>\r\n");
      out.write("            <li><a href=\"Cart.jsp\" style=\" padding-left: 30px;\"><img src=\"Image/cart.png\"  height=\"45\" width=\"45\" style=\"  background-color: white; border-radius: 50px;\"></a></li>\r\n");
      out.write("            <li><form action=\"index.html\" style=\"padding-left: 5px; \">\r\n");
      out.write("                    <button style=\" background-color: #a2090c; border: 0; font-size: 12px; width: 70px; height: 35px; \"  type=\"submit\" class=\"out-button\">Log Out</button>\r\n");
      out.write("                </form>\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </nav>\r\n");
      out.write("    \r\n");
      out.write("    <div style=\" background-color: black; padding-top: 50px;\" >\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\">\r\n");
      out.write("        <div class=\"carousel-inner\">\r\n");
      out.write("            <div class=\"carousel-item active\">\r\n");
      out.write("                <img class=\"d-block w-100\" height=\"100%\" width=\"100%\" src=\"Image/cr1.jpg\" alt=\"First slide\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"carousel-item\">\r\n");
      out.write("                <img class=\"d-block w-100\" height=\"100%\" width=\"100%\" src=\"Image/cr2.jpg\" alt=\"Second slide\">\r\n");
      out.write("            </div>\r\n");
      out.write("            ");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <a class=\"carousel-control-prev\" href=\"#carouselExampleIndicators\" role=\"button\" data-slide=\"prev\">\r\n");
      out.write("            <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("            <span class=\"sr-only\">Previous</span>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a class=\"carousel-control-next\" href=\"#carouselExampleIndicators\" role=\"button\" data-slide=\"next\">\r\n");
      out.write("            <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("            <span class=\"sr-only\">Next</span>\r\n");
      out.write("        </a>\r\n");
      out.write("    </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("    </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        <div style=\" background-color: black;\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"flex-container\">\r\n");
      out.write("            <div class=\"flex-item\" style=\" border: 0;\"><img  src=\"Image/form.jpg\" width=\"100%\" height=\"100%\"></div>\r\n");
      out.write("            <div class=\"flex-item\" style=\" border: 0;\"><br><br><h3 style=\" text-align: center;\">100% Sri Lankan</h3>\r\n");
      out.write("                <p style=\" text-align: center;\">dgfiuoregfiolgjlsdhklg fghrfghdsfig riughoirehgiubsdflg ioghibfsdogbodsfgl</p></div>\r\n");
      out.write("        </div></div></div>\r\n");
      out.write("            <div class=\"flex-container\">\r\n");
      out.write("                <div class=\"flex-item\" style=\" border: 0;\"><a href=\"Shoes.jsp\"><img  src=\"Image/form.jpg\" width=\"100%\" height=\"100%\"></a></div>\r\n");
      out.write("                <div class=\"flex-item\" style=\" border: 0;\"><a href=\"Clothes.jsp\"><img  src=\"Image/login.jpg\" width=\"100%\" height=\"100%\"></a></div>\r\n");
      out.write("</div>\r\n");
      out.write("            \r\n");
      out.write("            <br>\r\n");
      out.write("            \r\n");
      out.write("            <hr>\r\n");
      out.write("        \r\n");
      out.write("            \r\n");
      out.write("                ");

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
                    
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                    <table>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            ");
while(a < 2 && rs1.next() && rs2.next() )
                     {
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                    <td><div class=\"card\"  onmousemove=\"this.style.backgroundColor='black'; this.style.color='white';\" onmouseout=\"this.style.backgroundColor = 'white';this.style.color='black';\" >\r\n");
      out.write("                 ");
 
                byte[] imageData = rs1.getBytes("Image");
                String base64Image = Base64.getEncoder().encodeToString(imageData);
                
                 
      out.write("\r\n");
      out.write("                 <img src=\"data:image/png;base64,");
      out.print( base64Image );
      out.write("\" width=\"100%\" height=\"100%\" />\r\n");
      out.write("                <center><h3>");
      out.print(rs1.getString("ItemName") );
      out.write("</h3>\r\n");
      out.write("                <p>");
      out.print( rs1.getString("Description") );
      out.write("</p>\r\n");
      out.write("                <h5>Rs.");
      out.print( rs1.getString("Price") );
      out.write("</h5>\r\n");
      out.write("                <form action=\"Shoes.jsp\">\r\n");
      out.write("                    <button style=\" border-radius: 4px; width: 100px; background-color: #cccccc; font-weight: bold; border: 0; \" type=\"submit\" onmousemove=\"this.style.backgroundColor = '#2a38ec'; this.style.color='white';\" onmouseout=\"this.style.backgroundColor = '#cccccc'; this.style.color='black';\">View more</button></center>\r\n");
      out.write("                </form>\r\n");
      out.write("                </div></td>\r\n");
      out.write("\r\n");
      out.write("                <td><div class=\"card\"  onmousemove=\"this.style.backgroundColor='black'; this.style.color='white';\" onmouseout=\"this.style.backgroundColor = 'white';this.style.color='black';\">\r\n");
      out.write("                 ");
 
                byte[] iData = rs2.getBytes("Image");
                String base64 = Base64.getEncoder().encodeToString(iData);
                 
      out.write("\r\n");
      out.write("                 <img src=\"data:image/png;base64,");
      out.print( base64 );
      out.write("\" width=\"100%\" height=\"100%\" />\r\n");
      out.write("                <center><h3>");
      out.print( rs2.getString("ItemName") );
      out.write("</h3>\r\n");
      out.write("                <p>");
      out.print( rs2.getString("Description") );
      out.write("</p>\r\n");
      out.write("                <h5>Rs.");
      out.print( rs2.getString("Price") );
      out.write("</h5>\r\n");
      out.write("                <form action=\"Clothes.jsp\">\r\n");
      out.write("                    <button style=\" border-radius: 4px; width: 100px; background-color: #cccccc; font-weight: bold; border: 0; \" type=\"submit\" onmousemove=\"this.style.backgroundColor = '#2a38ec'; this.style.color='white';\" onmouseout=\"this.style.backgroundColor = '#cccccc'; this.style.color='black';\">View more</button></center>\r\n");
      out.write("                </form>\r\n");
      out.write("                </div></td>\r\n");
      out.write("                    \r\n");
      out.write("                     ");
 a++;  
                    }
                    
      out.write("\r\n");
      out.write("                     </tr>\r\n");
      out.write("                     \r\n");
      out.write("                     ");
a=0;
      out.write("\r\n");
      out.write("                     <tr>\r\n");
      out.write("                           ");
while(a < 2 && rs1.next() && rs2.next() )
                     {
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                    <td><div class=\"card\"  onmousemove=\"this.style.backgroundColor='black'; this.style.color='white';\" onmouseout=\"this.style.backgroundColor = 'white';this.style.color='black';\" >\r\n");
      out.write("                 ");
 
                byte[] imageData = rs1.getBytes("Image");
                String base64Image = Base64.getEncoder().encodeToString(imageData);
                
                 
      out.write("\r\n");
      out.write("                 <img src=\"data:image/png;base64,");
      out.print( base64Image );
      out.write("\" width=\"100%\" height=\"100%\" />\r\n");
      out.write("                <center><h3>");
      out.print(rs1.getString("ItemName") );
      out.write("</h3>\r\n");
      out.write("                <p>");
      out.print( rs1.getString("Description") );
      out.write("</p>\r\n");
      out.write("                <h5>Rs.");
      out.print( rs1.getString("Price") );
      out.write("</h5>\r\n");
      out.write("                <form action=\"Shoes.jsp\">\r\n");
      out.write("                    <button style=\" border-radius: 4px; width: 100px; background-color: #cccccc; font-weight: bold; border: 0; \" type=\"submit\" onmousemove=\"this.style.backgroundColor = '#2a38ec'; this.style.color='white';\" onmouseout=\"this.style.backgroundColor = '#cccccc'; this.style.color='black';\">View more</button></center>\r\n");
      out.write("                </form>\r\n");
      out.write("                </div></td>\r\n");
      out.write("\r\n");
      out.write("                <td><div class=\"card\"  onmousemove=\"this.style.backgroundColor='black'; this.style.color='white';\" onmouseout=\"this.style.backgroundColor = 'white';this.style.color='black';\">\r\n");
      out.write("                 ");
 
                byte[] iData = rs2.getBytes("Image");
                String base64 = Base64.getEncoder().encodeToString(iData);
                 
      out.write("\r\n");
      out.write("                 <img src=\"data:image/png;base64,");
      out.print( base64 );
      out.write("\" width=\"100%\" height=\"100%\" />\r\n");
      out.write("                <center><h3>");
      out.print( rs2.getString("ItemName") );
      out.write("</h3>\r\n");
      out.write("                <p>");
      out.print( rs2.getString("Description") );
      out.write("</p>\r\n");
      out.write("                <h5>Rs.");
      out.print( rs2.getString("Price") );
      out.write("</h5>\r\n");
      out.write("                <form action=\"Clothes.jsp\">\r\n");
      out.write("                    <button style=\" border-radius: 4px; width: 100px; background-color: #cccccc; font-weight: bold; border: 0; \" type=\"submit\" onmousemove=\"this.style.backgroundColor = '#2a38ec'; this.style.color='white';\" onmouseout=\"this.style.backgroundColor = '#cccccc'; this.style.color='black';\">View more</button></center>\r\n");
      out.write("                </form>\r\n");
      out.write("                </div></td>\r\n");
      out.write("                    \r\n");
      out.write("                     ");
 a++;  
                    }
                    
      out.write("\r\n");
      out.write("                     </tr>\r\n");
      out.write("                     \r\n");
      out.write("                     </table>\r\n");
      out.write("        \r\n");
      out.write("                     <div class=\"footer\">\r\n");
      out.write("                        <div class=\"flex-container\">\r\n");
      out.write("                            <div class=\"flex-footer\">\r\n");
      out.write("                                <div class=\" container\"><br>\r\n");
      out.write("                                    <br>\r\n");
      out.write("                                    <div  style=\" padding-left: 20px;\">\r\n");
      out.write("                                    <a href=\"AboutUs.html\">About Us</a><br><br>\r\n");
      out.write("                                    <p style=\"color:white;\">Contact Us<br><br>\r\n");
      out.write("                                        <a href=\"#\">Email Us</a><br><br>\r\n");
      out.write("                                        0112345678 / 0335869568</p></div></div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"flex-footer\"  style=\"text-align:center;\"><div class=\" container\"><br>\r\n");
      out.write("                                    <br><br><a href=\"Home.jsp\"><img src=\"Image/logo.jpg\" width=\"250px\" height=\"100px\"></a></div></div>\r\n");
      out.write("                            <div class=\"flex-footer\"  style=\"text-align: right; \"><div class=\" container\"><div  style=\" padding-right: 20px;\"><br>\r\n");
      out.write("                                        <br><p style=\"color: white;\">Follow us</p>\r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                                        <a href=\"#\"> <img src=\"Image/fb.JPG\" style=\" border-radius: 100px; height: 35px; width: 35px; margin-right: 20px;\"></a>\r\n");
      out.write("                                        <a href=\"#\">    <img src=\"Image/ins.JPG\" style=\" border-radius: 500px; height: 35px; width: 35px; margin-right: 20px;\"></a>\r\n");
      out.write("                                        <a href=\"#\">    <img src=\"Image/wh.JPG\" style=\" border-radius: 500px; height: 35px; width: 35px; \"></a>\r\n");
      out.write("                                        <br><br><br>\r\n");
      out.write("                                         <p style=\"color: white;\">Payment Methods</p>\r\n");
      out.write("                                         \r\n");
      out.write("                                         <img src=\"Image/p1.JPG\" style=\"  height: 40px; width: 65px; margin-right: 20px;\">\r\n");
      out.write("                                         <img src=\"Image/p2.JPG\" style=\"  height: 40px; width: 65px; margin-right: 20px;\">\r\n");
      out.write("                                         <img src=\"Image/p3.JPG\" style=\"  height: 40px; width: 65px; \">\r\n");
      out.write("                                    </div></div></div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                     </div>\r\n");
      out.write("                      <footer style=\"text-align: center; color: white; background-color: black; font-size: 11px;\">© 2024 Mr.Style. All rights reserved.\r\n");
      out.write("</footer>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("       \r\n");
      out.write("        \r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js\"></script>\r\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("    \r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

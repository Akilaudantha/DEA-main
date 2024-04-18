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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <title>Home</title>\n");
      out.write("        <style>\n");
      out.write("            .pimage{\n");
      out.write("                width: 20px;\n");
      out.write("                height: 10px;\n");
      out.write("            }\n");
      out.write("        \n");
      out.write("        .menu {\n");
      out.write("            background-color: black;\n");
      out.write("            color: #fff;\n");
      out.write("            padding: 10px;\n");
      out.write("        }\n");
      out.write("        .menu ul {\n");
      out.write("            list-style-type: none;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("            text-align: left;\n");
      out.write("        }\n");
      out.write("        .menu li {\n");
      out.write("            display: inline-block;\n");
      out.write("            margin-right: 20px;\n");
      out.write("        }\n");
      out.write("        .menu a {\n");
      out.write("            text-decoration: none;\n");
      out.write("            color: #fff;\n");
      out.write("        }\n");
      out.write("        .search-container {\n");
      out.write("            margin-top: 20px;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("        .search-input {\n");
      out.write("            padding: 8px 12px;\n");
      out.write("            border: 1px solid #ccc;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            width: 550px;\n");
      out.write("            height: 40px;\n");
      out.write("            max-width: 100%;\n");
      out.write("            align-content: center;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("        .search-button {\n");
      out.write("            padding: 8px 12px;\n");
      out.write("            border: 1px solid #007bff;\n");
      out.write("            background-color: #007bff;\n");
      out.write("            color: #fff;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("        .out-button{\n");
      out.write("            padding: 8px 12px;\n");
      out.write("            border: 1px solid #007bff;\n");
      out.write("            background-color: #007bff;\n");
      out.write("            color: #fff;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            align-content:  space-around;\n");
      out.write("        }\n");
      out.write("        .categ{\n");
      out.write("            background-color: black;\n");
      out.write("            color: #fff;\n");
      out.write("        }\n");
      out.write("        .flex-container {\n");
      out.write("        display: flex;\n");
      out.write("    }\n");
      out.write("    .flex-item {\n");
      out.write("        flex: 1; /* Divide into two equal parts */\n");
      out.write("        background-color: white;\n");
      out.write("        padding: 20px;\n");
      out.write("        border: 1px solid #ccc;\n");
      out.write("    }\n");
      out.write("    .flex-footer{\n");
      out.write("        flex: 2; \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    }\n");
      out.write("    .card {\n");
      out.write("        border: 1px solid #ccc;\n");
      out.write("        border-radius: 8px;\n");
      out.write("        padding: 20px;\n");
      out.write("        width: 235px;\n");
      out.write("        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\n");
      out.write("        background-color: #fff;\n");
      out.write("        margin: 20px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("  \n");
      out.write("    .card h3 {\n");
      out.write("        margin-top: 0;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("   \n");
      out.write("    .card p {\n");
      out.write("        margin-bottom: 0;\n");
      out.write("    }\n");
      out.write("    .footer{\n");
      out.write("        height: 400px;\n");
      out.write("        background-color: black;\n");
      out.write("        width: 100%;\n");
      out.write("    }\n");
      out.write("        \n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <nav class=\"menu\">\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"Home.jsp\"><img src=\"Image/login.jpg\" height=\"50\" width=\"50\"></a></li>\n");
      out.write("            <li>\n");
      out.write("                <select class=\"categ\">\n");
      out.write("                    <option disabled style=\"color: gray;\">Select Category</option>\n");
      out.write("                    <option>Shoes</option>\n");
      out.write("                    <option>Clothes</option>\n");
      out.write("                </select>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\">Help & Services</a></li>\n");
      out.write("            <li><a href=\"#\">About Us</a></li>\n");
      out.write("            <li> <form action=\"search.jsp\" method=\"post\">\n");
      out.write("                    <input type=\"text\" name=\"search\" class=\"search-input\" placeholder=\"Search here \">\n");
      out.write("                    <button type=\"submit\" class=\"search-button\">Search</button>\n");
      out.write("                </form>\n");
      out.write("            </li>\n");
      out.write("            <li></li>\n");
      out.write("            <li><a href=\"Cart.jsp\"><img src=\"Image/cart.png\"  height=\"30\" width=\"30\"></a></li>\n");
      out.write("            <li><form action=\"index.html\">\n");
      out.write("                    <button type=\"submit\" class=\"out-button\">Sign Out</button>\n");
      out.write("                </form>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("    </nav>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <div class=\"container\">\n");
      out.write("    <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("        <div class=\"carousel-inner\">\n");
      out.write("            <div class=\"carousel-item active\">\n");
      out.write("                <img class=\"d-block w-100\" height=\"500\" width=\"550\" src=\"Image/login.jpg\" alt=\"First slide\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"carousel-item\">\n");
      out.write("                <img class=\"d-block w-100\" height=\"500\" width=\"550\" src=\"Image/form.jpg\" alt=\"Second slide\">\n");
      out.write("            </div>\n");
      out.write("            ");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <a class=\"carousel-control-prev\" href=\"#carouselExampleIndicators\" role=\"button\" data-slide=\"prev\">\n");
      out.write("            <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("            <span class=\"sr-only\">Previous</span>\n");
      out.write("        </a>\n");
      out.write("        <a class=\"carousel-control-next\" href=\"#carouselExampleIndicators\" role=\"button\" data-slide=\"next\">\n");
      out.write("            <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("            <span class=\"sr-only\">Next</span>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div class=\"flex-container\">\n");
      out.write("            <div class=\"flex-item\"><a href=\"Shoes.jsp\"><img src=\"Image/form.jpg\" width=\"515\" height=\"200\"></a></div>\n");
      out.write("            <div class=\"flex-item\"><a href=\"Clothes.jsp\"><img src=\"Image/login.jpg\" width=\"515\" height=\"200\"></a></div>\n");
      out.write("</div>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <hr>\n");
      out.write("        \n");
      out.write("            \n");
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
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                            ");
while(a < 2 && rs1.next() && rs2.next() )
                     {
      out.write("\n");
      out.write("                    \n");
      out.write("                    <td><div class=\"card\">\n");
      out.write("                 ");
 
                byte[] imageData = rs1.getBytes("Image");
                String base64Image = Base64.getEncoder().encodeToString(imageData);
                
                 
      out.write("\n");
      out.write("                 <img src=\"data:image/png;base64,");
      out.print( base64Image );
      out.write("\" width=\"200\" height=\"150\" />\n");
      out.write("                <center><h3>");
      out.print(rs1.getString("ItemName") );
      out.write("</h3>\n");
      out.write("                <p>");
      out.print( rs1.getString("Description") );
      out.write("</p>\n");
      out.write("                <h4>Rs.");
      out.print( rs1.getString("Price") );
      out.write("</h4>\n");
      out.write("                <form action=\"Shoes.jsp\">\n");
      out.write("                    <button type=\"submit\">View more</button></center>\n");
      out.write("                </form>\n");
      out.write("                </div></td>\n");
      out.write("\n");
      out.write("                    <td><div class=\"card\">\n");
      out.write("                 ");
 
                byte[] iData = rs2.getBytes("Image");
                String base64 = Base64.getEncoder().encodeToString(iData);
                 
      out.write("\n");
      out.write("                 <img src=\"data:image/png;base64,");
      out.print( base64 );
      out.write("\" width=\"200\" height=\"150\" />\n");
      out.write("                <center><h3>");
      out.print( rs2.getString("ItemName") );
      out.write("</h3>\n");
      out.write("                <p>");
      out.print( rs2.getString("Description") );
      out.write("</p>\n");
      out.write("                <h4>Rs.");
      out.print( rs2.getString("Price") );
      out.write("</h4>\n");
      out.write("                <form action=\"Clothes.jsp\">\n");
      out.write("                    <button type=\"submit\">View more</button></center>\n");
      out.write("                </form>\n");
      out.write("                </div></td>\n");
      out.write("                    \n");
      out.write("                     ");
 a++;  
                    }
                    
      out.write("\n");
      out.write("                     </tr>\n");
      out.write("                     \n");
      out.write("                     </table>\n");
      out.write("        </div>\n");
      out.write("                     <div class=\"footer\">\n");
      out.write("                        <div class=\"flex-container\">\n");
      out.write("                            <div class=\"flex-footer\"><a href=\"AboutUs.html\">About Us</a><br>\n");
      out.write("                                <p style=\"color:white;\">Contact Us<br>\n");
      out.write("                                <a href=\"#\">Email Us</a><br>\n");
      out.write("                                0112345678/0335869568</p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"flex-footer\"  style=\"text-align:center;\"><a href=\"AboutUs.html\">About Us</a></div>\n");
      out.write("                            <div class=\"flex-footer\"  style=\"text-align: right; \"><a href=\"AboutUs.html\">About Us</a></div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                      <footer style=\"text-align: center; color: white; background-color: black;\">© 2024 ABC Company. All rights reserved.\n");
      out.write("</footer>\n");
      out.write("        ");
      out.write("\n");
      out.write("       \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("    \n");
      out.write("</html>\n");
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

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
      out.write("        <title>Home</title>\r\n");
      out.write("        <style>\r\n");
      out.write("        \r\n");
      out.write("        .menu {\r\n");
      out.write("            background-color: #333;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("        }\r\n");
      out.write("        .menu ul {\r\n");
      out.write("            list-style-type: none;\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("        .menu li {\r\n");
      out.write("            display: inline-block;\r\n");
      out.write("            margin-right: 20px;\r\n");
      out.write("        }\r\n");
      out.write("        .menu a {\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <nav class=\"menu\">\r\n");
      out.write("        <ul>\r\n");
      out.write("            <li><a href=\"#\">Home</a></li>\r\n");
      out.write("            <li><a href=\"#\">About</a></li>\r\n");
      out.write("            <li><a href=\"#\">Services</a></li>\r\n");
      out.write("            <li><a href=\"#\">Contact</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </nav>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <div>\r\n");
      out.write("        <h1>Welcome to Our Website!</h1>\r\n");
      out.write("        \r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table>\r\n");
      out.write("\r\n");
      out.write("        ");
// Establish the connection to your database
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/mainDEA";
        
        Connection conn = DriverManager.getConnection(url, "root", "");
        
        // Get the image file from the request
        
        
        Statement s = conn.createStatement();
        // Prepare the SQL statement to insert the image into the database
        String sql = "SELECT * FROM Shoes";
        
        ResultSet rs=s.executeQuery(sql);
        
        while (rs.next())
        {
            
        byte[] imageData = rs.getBytes("Image");
        
       
        String base64Image = Base64.getEncoder().encodeToString(imageData);
        
         
        out.println("<tr><td><img src=\"data:image/png;base64," + base64Image + "\" /></td></tr>");
        
        }
      out.write("\r\n");
      out.write("       \r\n");
      out.write("       \r\n");
      out.write("        </table>\r\n");
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

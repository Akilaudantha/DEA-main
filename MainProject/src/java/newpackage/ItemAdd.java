/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@MultipartConfig(maxFileSize = 1116177215)
/**
 *
 * @author Akila Udantha
 */
@WebServlet(name = "ItemAdd", urlPatterns = {"/ItemAdd"})
public class ItemAdd extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ItemAdd</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ItemAdd at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
         String inum=request.getParameter("inum");
            String iname=request.getParameter("iname");
            String iprice=request.getParameter("iprice");
            String idescrip=request.getParameter("idescrip");
            PrintWriter out=response.getWriter();
            String type=request.getParameter("cat");
          
        try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException ex) {
        out.println("Error");
    }

        try{
            String url = "jdbc:mysql://localhost:3306/mainDEA";
            Connection conn = DriverManager.getConnection(url, "root", "");
            Statement s=conn.createStatement();
             Part iimage= request.getPart("iimage");
            InputStream input = iimage.getInputStream();
        
            if (type.equals("Shoe")){
             String sql = "INSERT INTO Shoes VALUES ('"+inum+"','"+iname+"','"+iprice+"','"+idescrip+"',?)";
             //s.executeUpdate(sql);
             //String sql2 = "INSERT INTO Shoes(Image) VALUES (?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setBlob(1, input);

            
            ps.executeUpdate();
            }
            else if (type.equals("Clothes")){
            
                String sql = "INSERT INTO Clothes VALUES ('"+inum+"','"+iname+"','"+iprice+"','"+idescrip+"',?)";
             //s.executeUpdate(sql);
             //String sql2 = "INSERT INTO Shoes(Image) VALUES (?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setBlob(1, input);

            
            ps.executeUpdate();
                
            }
            response.sendRedirect("Home.jsp");
        }

        catch (SQLException ex) {
        
        log("SQL error: " + ex.getMessage());
        throw new ServletException("Database error", ex);
    }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

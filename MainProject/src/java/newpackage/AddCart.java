/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Akila Udantha
 */
@WebServlet(name = "AddCart", urlPatterns = {"/AddCart"})
public class AddCart extends HttpServlet {

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
            out.println("<title>Servlet AddCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddCart at " + request.getContextPath() + "</h1>");
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
        try {
            //processRequest(request, response);
            
            String name=request.getParameter("name");
            String des=request.getParameter("des");
            String price=request.getParameter("price");

            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/mainDEA";
            Connection con=DriverManager.getConnection(url,"root","");
            Statement st1=con.createStatement();
            Statement st2=con.createStatement();
            Statement st3=con.createStatement();
            
            String q1="INSERT INTO Cart (ItemName,Description,Price) VALUES ('"+name+"','"+des+"','"+price+"')";
            st1.executeUpdate(q1);
            String q2="SELECT * FROM Shoes WHERE ItemName='"+name+"' AND Description = '"+des+"'" ;
            String q3="SELECT * FROM Clothes WHERE ItemName='"+name+"' AND Description = '"+des+"'" ;
            String q4="SELECT * FROM Acc WHERE ItemName='"+name+"' AND Description = '"+des+"'";
            ResultSet rs1=st1.executeQuery(q2);
            ResultSet rs2=st2.executeQuery(q3);
            ResultSet rs3=st3.executeQuery(q4);
           
            while (rs1.next()) {
    Blob image = rs1.getBlob("Image");
    if (image != null) {
        InputStream imageStream = image.getBinaryStream();

        String sql = "UPDATE Cart SET Image=? WHERE ItemName='"+name+"' AND Description='"+des+"'";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setBinaryStream(1, imageStream);
       

        ps.executeUpdate();
    }
}

while (rs2.next()) {
    Blob image = rs2.getBlob("Image");
    if (image != null) {
        InputStream imageStream = image.getBinaryStream();

        String sql = "UPDATE Cart SET Image=? WHERE ItemName='"+name+"' AND Description='"+des+"'";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setBinaryStream(1, imageStream);
        

        ps.executeUpdate();
    }
}       
    while (rs3.next()) {
    Blob image = rs3.getBlob("Image");
    if (image != null) {
        InputStream imageStream = image.getBinaryStream();

        String sql = "UPDATE Cart SET Image=? WHERE ItemName='"+name+"' AND Description='"+des+"'";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setBinaryStream(1, imageStream);
       

        ps.executeUpdate();
    }
}
            response.sendRedirect("Cart.jsp");
                    
                   
        } catch (Exception ex) {
            Logger.getLogger(AddCart.class.getName()).log(Level.SEVERE, null, ex);
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

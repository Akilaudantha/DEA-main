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
@WebServlet(name = "upItem", urlPatterns = {"/upItem"})
public class upItem extends HttpServlet {

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
            out.println("<title>Servlet upItem</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet upItem at " + request.getContextPath() + "</h1>");
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
            String icode=request.getParameter("icode");
            String cat=request.getParameter("cat");
            String up=request.getParameter("update");
            
            String iname=request.getParameter("iname");
            String iprice=request.getParameter("iprice");
            String ide=request.getParameter("ide");
            
            String cimg=request.getParameter("im");
            
            Part iimage= request.getPart("image");
            InputStream input = iimage.getInputStream();
            
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/mainDEA";
            Connection con=DriverManager.getConnection(url, "root", "");
            Statement st=con.createStatement();
            
            if(cat.equals("Shoes"))
            {
                if(up.equals("update"))
                {
                    String q1="UPDATE Shoes SET ItemName='"+iname+"',Price='"+iprice+"',Description='"+ide+"' WHERE ItemNum='"+icode+"'";
                    st.executeUpdate(q1);
                    
                    if (cimg.equals("yes"))
                    {
                    String sql = "UPDATE Shoes SET Image=? WHERE ItemNum='"+icode+"'";
             
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setBlob(1, input);
            
                    ps.executeUpdate();
                    
                    }
                    response.sendRedirect("Update.jsp");
                }
                else if(up.equals("delete"))
                {
                    String q2="DELETE FROM Shoes WHERE ItemNum='"+icode+"'";
                    st.executeUpdate(q2);
                    response.sendRedirect("Update.jsp");
                }
                
            }
            
            else if(cat.equals("Clothes"))
            {
                if(up.equals("update"))
                {
                    String q3="UPDATE Clothes SET ItemName='"+iname+"',Price='"+iprice+"',Description='"+ide+"' WHERE ItemNum='"+icode+"'";
                    st.executeUpdate(q3);
                    
                    if (cimg.equals("yes"))
                {
                    String sql = "UPDATE Clothes SET Image=? WHERE ItemNum='"+icode+"'";
             
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setBlob(1, input);
            
                    ps.executeUpdate();
                    
                }
                    response.sendRedirect("Update.jsp");
                }
                else if(up.equals("delete"))
                {
                    String q4="DELETE FROM Clothes WHERE ItemNum='"+icode+"'";
                    st.executeUpdate(q4);
                    response.sendRedirect("Update.jsp");
                }
                
            }
            else if(cat.equals("Acc"))
            {
                if(up.equals("update"))
                {
                    String q3="UPDATE Acc SET ItemName='"+iname+"',Price='"+iprice+"',Description='"+ide+"' WHERE ItemNum='"+icode+"'";
                    st.executeUpdate(q3);
                    
                    if (cimg.equals("yes"))
                {
                    String sql = "UPDATE Acc SET Image=? WHERE ItemNum='"+icode+"'";
             
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setBlob(1, input);
            
                    ps.executeUpdate();
                    
                }
                    response.sendRedirect("Update.jsp");
                }
                else if(up.equals("delete"))
                {
                    String q4="DELETE FROM Acc WHERE ItemNum='"+icode+"'";
                    st.executeUpdate(q4);
                    response.sendRedirect("Update.jsp");
                }
                
            }
            
        } catch (Exception ex) {
            Logger.getLogger(siup.class.getName()).log(Level.SEVERE, null, ex);
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

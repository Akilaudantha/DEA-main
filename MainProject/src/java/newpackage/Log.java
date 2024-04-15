/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
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

/**
 *
 * @author Akila Udantha
 */
@WebServlet(name = "Log", urlPatterns = {"/Log"})
public class Log extends HttpServlet {

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
            out.println("<title>Servlet Log</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Log at " + request.getContextPath() + "</h1>");
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
        try {
        
        String uname=request.getParameter("uname");
        String pass=request.getParameter("psw");
            
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/mainDEA";
        Connection con=DriverManager.getConnection(url, "root","");
        Statement st=con.createStatement();
        
        String q1="SELECT * FROM Users";
        ResultSet rs1=st.executeQuery(q1);
        
       /* String q2="SELECT * FROM Admin";
        ResultSet rs2=st.executeQuery(q2);*/
        
        while (rs1.next())
        {
            if(uname.equals(rs1.getString("FirstName")) && pass.equals(rs1.getString("Password")))
            {
                response.sendRedirect("Home.jsp");
            }
        }
        /*while (rs2.next())
        {
            if(uname.equals(rs2.getString("UserName")) && pass.equals(rs2.getString("Password")))
            {
                response.sendRedirect("AdminHome.jsp");
            }
        }*/
        PrintWriter out=response.getWriter();
        out.println("Login Error");
        
        
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Log.class.getName()).log(Level.SEVERE, null, ex);
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

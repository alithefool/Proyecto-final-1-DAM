package com.Coastline.user;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import java.sql.ResultSet;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String uemail = request.getParameter("email");
        String username = request.getParameter("username");
        String upasswd = request.getParameter("password");
        int mazosCreados= 0;
        int idVisitante = 0;
        
        RequestDispatcher dispatcher = null;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Coastline_DCT","root","PaleMoonlight...");
            // Query to fetch the next available ID from visitantes table
            pst = conn.prepareStatement("SELECT MAX(id_visitante) AS max_id FROM visitantes");
            rs = pst.executeQuery();

            if (rs.next()) {
                idVisitante = rs.getInt("max_id");
            }
            
            // Insert into usuarios table using the fetched idVisitante
            pst = conn.prepareStatement("INSERT INTO usuarios (nombre_usuario, email, contrasena, firstname, lastname, mazos_creados, id_visitante) VALUES (?, ?, ?, ?, ?, ?, ?)");
            
            pst.setString(1, username);
            pst.setString(2, uemail);
            pst.setString(3, upasswd);
            pst.setString(4, fname);
            pst.setString(5, lname);
            pst.setInt(6, mazosCreados);
            pst.setInt(7, idVisitante);

            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("registration.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try{
                conn.close();
            }catch(SQLException e){}
        }
    }
}

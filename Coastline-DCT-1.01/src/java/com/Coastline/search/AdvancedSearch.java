/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.Coastline.search;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

import java.io.PrintWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/search")
public class AdvancedSearch extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String cardName = request.getParameter("cardName");
        String cardType = request.getParameter("cardType");
        String cardRarity = request.getParameter("cardRarity");
        String cardText = request.getParameter("cardText");
        String cardCost = request.getParameter("cardCost");
        String cardCultureCost = request.getParameter("cardCultureCost");
        String cardCulture = request.getParameter("cardCulture");
        String cardSet = request.getParameter("cardSet");
        String cardID = request.getParameter("cardID");

        HttpSession session = request.getSession();
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        List<String> searchResults = new ArrayList<>();
        RequestDispatcher dispatcher = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Coastline_DCT?useSSL=false", "root", "PaleMoonlight...");

            StringBuilder query = new StringBuilder("SELECT * FROM cartas WHERE 1=1");
            List<String> parameters = new ArrayList<>();
            
            if (cardName == null && cardName.isEmpty() 
                    && cardText == null && cardText.isEmpty() 
                    && cardType == null && cardType.isEmpty() 
                    && cardCost == null && cardCost.isEmpty()
                    && cardCultureCost == null && cardCultureCost.isEmpty()
                    && cardCulture == null && cardCulture.isEmpty()
                    && cardSet == null && cardSet.isEmpty()
                    && cardID == null && cardID.isEmpty()){
                
                //if everything is null search everything so this append is empty intentionally
                
                //so where 1=1 will search everything
                query.append(""); 
            }
            // else, specifity in search and therefore a detailed search
            
            else if (cardName != null && !cardName.isEmpty()) {
                query.append(" AND nombre LIKE ?");
                parameters.add("%" + cardName + "%");
            }
            else if (cardText != null && !cardText.isEmpty()) {
                query.append(" AND texto_reglas LIKE ?");
                parameters.add("%" + cardText + "%");
            }
            else if (cardType != null && !cardType.isEmpty()) {
                query.append(" AND supertipo LIKE ?");
                parameters.add("%" + cardType + "%");
            }
            else if (cardCost != null && !cardCost.isEmpty()) {
                query.append(" AND coste LIKE ?");
                parameters.add("%" + cardCost + "%");
            }
            else if (cardCultureCost != null && !cardCultureCost.isEmpty()) {
                query.append(" AND coste_cultural LIKE ?");
                parameters.add("%" + cardCultureCost + "%");
            }
            else if (cardCulture != null && !cardCulture.isEmpty()) {
                query.append(" AND cultura LIKE ?");
                parameters.add("%" + cardCulture + "%");
            }
            else if (cardSet != null && !cardSet.isEmpty()) {
                query.append(" AND set LIKE ?");
                parameters.add("%" + cardSet + "%");
            }
            else if (cardID != null && !cardID.isEmpty()) {
                query.append(" AND id_carta LIKE ?");
                parameters.add("%" + cardID + "%");
            }
            

            pst = conn.prepareStatement(query.toString());

            for (int i = 0; i < parameters.size(); i++) {
                pst.setString(i + 1, parameters.get(i));
            }


            while (rs.next()) {
                searchResults.add(rs.getString("nombre"));
            }

            session.setAttribute("searchResults", searchResults);
            dispatcher = request.getRequestDispatcher("card-lookup.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (pst != null) pst.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
}

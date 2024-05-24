/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Coastline.visitor;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author cerrchus
 */

//THIS IS RETURNING NULL,
//IS NOT PRIORITY SO WILL BE FIXED WHEN CAN BE


@WebServlet("/visitor-index")
public class LocalTimeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // get the current local date and time
        LocalDateTime localDateTime = LocalDateTime.now();
        
        // format the local date and time
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDateTime = localDateTime.format(formatter);
        
        // set the formatted date and time as an attribute in the request
        request.setAttribute("localDateTime", formattedDateTime);
        
        // forward the request to the JSP for rendering
        request.getRequestDispatcher("visitor-index.jsp").forward(request, response);
    }
}
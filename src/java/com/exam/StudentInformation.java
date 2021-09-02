/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class StudentInformation extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) {

        try {
            req.setAttribute("FirstName", "Dill");
            req.setAttribute("LastName", "Afroz");

            RequestDispatcher d = req.getRequestDispatcher("StudentInfo.jsp");
            d.forward(req, resp);
        } catch (IOException | ServletException e) {
        }

    }

    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        doPost(req, resp);
    }

}

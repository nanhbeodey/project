/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.User;

/**
 *
 * @author Nanhbeo

 */
public class Login extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get bien tu front-end (login.jsp) day ve 
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        // Call DAO
        UserDAO dao = new UserDAO();
        HttpSession session = request.getSession();
        ArrayList<User> list = dao.getAllUser();
        String mess = "Login Failed!";
       
        for (User user : list) {
            if (user.getEmail().equals(email) && user.getPassword().equals(pass)) { //Check user login nam trong list ?
                mess = "Login Successfully";
                session.setAttribute("user", user); //Luu lai doi tuong user checked len session khi login thanh cong
            }
        }
        
        if (mess.equals("Login Failed!")) { //Check neu login failed thi giu lai o trang Login
            request.setAttribute("mess", mess);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else { // Login thanh cong thi day nguoi dung sang trang ListPairWord
            response.sendRedirect("DictionaryStore");
        }
    }



}

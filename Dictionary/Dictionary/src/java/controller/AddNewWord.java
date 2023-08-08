/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.WordsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.EnglishWords;
import model.VNWords;

/**
 *
 * @author Nanhbeo
 */
public class AddNewWord extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddNewWord</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddNewWord at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        
        request.getRequestDispatcher("add.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String vid = request.getParameter("vid");
        String vword = request.getParameter("vword");
        String vdefinition = request.getParameter("vdefinition");
//        String eid = request.getParameter("eid");
        String eword = request.getParameter("eword");
        String edefinition = request.getParameter("edefinition");
        String vexp = request.getParameter("vexp");
        String eexp = request.getParameter("eexp");
        WordsDAO dao = new WordsDAO();
        int ideng = dao.addEngWord(eword.trim(), edefinition, eexp);
        int idVN = dao.addVnWord(vword.trim(), vdefinition, vexp);
        EnglishWords eng = dao.getEngLishWord(eword);
        VNWords vn = dao.getVNWords(vword);
        dao.addMap(String.valueOf(ideng), String.valueOf(idVN));
        response.sendRedirect("DictionaryStore");

    }

}

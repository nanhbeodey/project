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
public class Translate extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Translate</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Translate at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String word = request.getParameter("word");
        String type = request.getParameter("type");

        WordsDAO dao = new WordsDAO();
        if (word != null) {
            if (type.equals("1")) {

                word = word.trim();
                EnglishWords newwords = dao.getEngLishWordByVN(word);
                VNWords oldwords = dao.getVNWords(word);
                request.setAttribute("oldwords", oldwords);
                if (newwords == null) {
                    request.setAttribute("notfound", "Not found");
                } else {
                    request.setAttribute("newwords", newwords);
                }
                if ("".equals(word) || word == null) {
                    request.setAttribute("notfound", "Chưa nhập gì");
                }
            } else {
                word = word.trim();
                VNWords newwords = dao.getVNWordsByEnglishWord(word);
                EnglishWords oldwords = dao.getEngLishWord(word);
                request.setAttribute("oldwords", oldwords);
                if (newwords == null) {
                    request.setAttribute("notfound", "Not found");
                    
                } else {
                    request.setAttribute("newwords", newwords);
                }
                if ("".equals(word) || word == null) {
                    request.setAttribute("notfound", "Chưa nhập gì");
                }
            }
        }
        request.setAttribute("word", word);
        request.setAttribute("type", type);
        request.getRequestDispatcher("translate.jsp").forward(request, response);
//        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}

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
public class EditWord extends HttpServlet {

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
            out.println("<title>Servlet EditWord</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditWord at " + request.getContextPath() + "</h1>");
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
        String eid = request.getParameter("eid");
        String vid = request.getParameter("vid");
        WordsDAO dao = new WordsDAO();
        VNWords vn = dao.getVNWordsID(vid);
        EnglishWords eng = dao.getEngLishWordID(eid);
        request.setAttribute("vn", vn);
        request.setAttribute("eng", eng);
        request.getRequestDispatcher("edit.jsp").forward(request, response);

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
        String vid = request.getParameter("vid");
        String vword = request.getParameter("vword");
        String vdefinition = request.getParameter("vdefinition");
        String eid = request.getParameter("eid");
        String eword = request.getParameter("eword");
        String edefinition = request.getParameter("edefinition");
        String vexp = request.getParameter("vexp");
        String eexp = request.getParameter("eexp");
        WordsDAO dao = new WordsDAO();
        dao.updateEngWord(eid, eword.trim(), edefinition, eexp);
        dao.updateVnWord(vid, vword.trim(), vdefinition, vexp);
        response.sendRedirect("DictionaryStore");

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

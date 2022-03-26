/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import impl.UserDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Article;
import model.MessageError;

/**
 *
 * @author Aur
 */
public class DetailPost extends HttpServlet {

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
            out.println("<title>Servlet DetailPost</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DetailPost at " + request.getContextPath() + "</h1>");
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
        int id = Integer.parseInt(request.getParameter("id"));
        Article art = new UserDAOImpl().getArticlByID(id);
        request.setAttribute("art", art);
        request.getRequestDispatcher("view/postView/postDetail.jsp").forward(request, response);
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
        int id = Integer.parseInt(request.getParameter("id"));
        String contents = request.getParameter("content");
        int status = -1;

//
//    if (author == null || author.isEmpty()) {
//      request.setAttribute("error", MessageError.ARTICLE_NULL_AUTHOR);
//            response.sendRedirect("AddActicle");
//
//    }
//
//    if (topic == null || topic.isEmpty()) {
//      request.setAttribute("error", MessageError.ARTICLE_NULL_TOPIC);
//            response.sendRedirect("AddActicle");
//
//    }
        if (contents == null || contents.isEmpty()) {
            request.setAttribute("error", MessageError.ARTICLE_NULL_CONTENTS);
            response.sendRedirect("AddActicle");

        }
        Article thisArt = new Article();
        thisArt.setId(id);
        thisArt.setContent(contents);
        UserDAOImpl articleDao = new UserDAOImpl();
        articleDao.addArticle(thisArt);;
        response.sendRedirect("AllPost");
    
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

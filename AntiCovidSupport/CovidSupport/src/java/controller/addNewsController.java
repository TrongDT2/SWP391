/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import impl.UserDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.News;

/**
 *
 * @author Aur
 */
public class addNewsController extends HttpServlet {

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
            out.println("<title>Servlet addNewsController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addNewsController at " + request.getContextPath() + "</h1>");
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
        UserDAOImpl dao = new UserDAOImpl();
        List<Category> category = dao.getCategory();
        request.setAttribute("category", category);
        request.getRequestDispatcher("view/administrator/addNewsManager.jsp").forward(request, response);
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
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("uuuu/MM/dd");
        LocalDate localDate = LocalDate.now();
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String image = request.getParameter("image");
        String date = dtf.format(localDate);
        int categoryid = Integer.parseInt(request.getParameter("category"));
        String author = request.getParameter("author");
        String description = request.getParameter("description");
        UserDAOImpl dao = new UserDAOImpl();
        String success = null;
        try {
            News n = new News();
            n.setNews_id(id);
            n.setTitle(title);
            n.setImage(image);
            n.setDate(date);
            n.setAuthor(author);
            n.setContent(description);
            n.setCategory_id(categoryid);
            dao.insertNewsManager(n);
            success += "Create success";
        } catch (Exception ex) {
            success += "update fail";
        }
        request.setAttribute("success", success);
        response.sendRedirect("ListPostController");
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

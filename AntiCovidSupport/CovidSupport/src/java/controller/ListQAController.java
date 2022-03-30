/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ForumDetailDAO;
import model.Forum;
import impl.ForumDetailDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aur
 */
public class ListQAController extends HttpServlet {

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
         try {
            ForumDetailDAO restaurantDetailDAO = new ForumDetailDAOImpl();
            int pageIndex = 1;
            if (request.getParameter("index") != null) {
                pageIndex = Integer.parseInt(request.getParameter("index"));
            }
            //number of displayed items per page
            int itemPerPage = 6;
            List<Forum> listRestaurant = restaurantDetailDAO.getRestaurantByPageIndex(pageIndex, itemPerPage);
            //calculate max page number
            int totalRestaurant = restaurantDetailDAO.getTotalRestaurant();
            int maxPage = totalRestaurant <= itemPerPage ? 1
                    : totalRestaurant % itemPerPage == 0
                            ? totalRestaurant / itemPerPage
                            : (totalRestaurant / itemPerPage) + 1;
            request.setAttribute("listRes", listRestaurant);
            request.setAttribute("pageIndex", pageIndex);
            request.setAttribute("maxPage", maxPage);
            request.getRequestDispatcher("view/User/HomePage.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            request.getRequestDispatcher("view/User/Error.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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

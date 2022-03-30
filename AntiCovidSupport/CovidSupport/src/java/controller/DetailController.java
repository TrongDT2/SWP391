/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ForumDetailDAO;
import impl.ForumDetailDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Feedback;
import model.Forum;
import model.ForumImage;

/**
 *
 * @author Aur
 */
public class DetailController extends HttpServlet {

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
            int forumId = Integer.parseInt(request.getParameter("id"));
            String rateFilter = request.getParameter("filter") == null
                    ? "" : request.getParameter("filter");
            int pageIndex = request.getParameter("index") == null
                    ? 1 : Integer.parseInt(request.getParameter("index"));
            String userFeedback = request.getParameter("comment");
            String isSubmit = request.getParameter("isSubmit") == null
                    ? "" : request.getParameter("isSubmit");
            ForumDetailDAO restaurantDAO = new ForumDetailDAOImpl();
            int userRate = request.getParameter("rdbRate") == null
                    ? 1 : Integer.parseInt(request.getParameter("rdbRate"));
            String userName = (String) request.getSession().getAttribute("userName");
            boolean insertSuccess = false;
            //number of feedbacks displayed per page
            int itemPerPage = 2;
            /*check if user submit feedback then insert user feedback into 
            Feedback table*/
            if (isSubmit.equals("submit")) {
                //get the current date
                Date currentDate = Date.valueOf(LocalDate.now());
                Feedback myFeedback = new Feedback();
                myFeedback.setForumId(forumId);
                myFeedback.setUserName(userName);
                myFeedback.setFeedback(userFeedback);
                myFeedback.setFeedbackDate(currentDate);
                myFeedback.setUserRate(userRate);
                /*if insert success then reset user feedback and user rate*/
                if (restaurantDAO.insertFeedback(myFeedback)) {
                    userFeedback = "";
                    userRate = 1;
                    insertSuccess = true;
                }
                request.setAttribute("insertSuccess", insertSuccess);
            }
            Forum forumDetail = restaurantDAO.getRestaurantById(forumId);
            List<ForumImage> listImg = restaurantDAO.getRestaurantImages(forumId);
            List<Feedback> listFeedback = restaurantDAO.getRestaurantFeedBack(forumId,
                    pageIndex, itemPerPage, rateFilter);
            int totalFeedback = restaurantDAO.getTotalFeedback(forumId, "");
            int totalFeedbackByRate = restaurantDAO.getTotalFeedback(forumId, rateFilter);
            //calculate the number of pages displayed
            int maxPage = totalFeedbackByRate <= itemPerPage ? 1
                    : totalFeedbackByRate % itemPerPage == 0
                            ? totalFeedbackByRate / itemPerPage
                            : totalFeedbackByRate / itemPerPage + 1;
            request.setAttribute("forumDetail", forumDetail);
            request.setAttribute("listImg", listImg);
            request.setAttribute("listFeedback", listFeedback);
            request.setAttribute("totalFeedback", totalFeedback);
            request.setAttribute("userFeedback", userFeedback);
            request.setAttribute("userRate", userRate);
            request.setAttribute("pageIndex", pageIndex);
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("isSubmit", isSubmit);
            request.setAttribute("filter", rateFilter);
            request.getRequestDispatcher("view/User/DetailPage.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("errorMessage", e.getMessage());
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

package impl;

import DBContext.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Feedback;
import model.Forum;
import model.ForumImage;
import dao.ForumDetailDAO;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ForumDetailDAOImpl extends DBContext implements ForumDetailDAO {

    @Override
    public List<Forum> getRestaurantByPageIndex(int pageIndex, int itemsPerPage) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Forum> listRestaurant = new ArrayList<>();
        try {
            String query = "SELECT * FROM(SELECT ROW_NUMBER() OVER \n"
                    + "(ORDER BY rate DESC) AS rn, * FROM Forum)\n"
                    + " AS x WHERE rn BETWEEN ? AND ?";
            int firstRecord = (pageIndex - 1) * itemsPerPage + 1;
            int lastRecord = pageIndex * itemsPerPage;
            conn = getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, firstRecord);
            ps.setInt(2, lastRecord);
            rs = ps.executeQuery();
            while (rs.next()) {
                Forum restaurant = new Forum(
                        rs.getInt("id"),
                        rs.getInt("userId"),
                        rs.getString("name"),
                        rs.getString("previewImgSrc"),
                        rs.getFloat("rate"));
                listRestaurant.add(restaurant);
            }
        } catch (ClassNotFoundException | NumberFormatException | SQLException e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(conn);
        }
        return listRestaurant;
    }

    @Override
    public int getTotalRestaurant() throws Exception {
        Connection conn = null;
        int restaurantCount = 0;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "SELECT COUNT(*) FROM Forum";
            conn = getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                restaurantCount = rs.getInt(1);
                break;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            throw ex;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(conn);
        }
        return restaurantCount;
    }

    @Override
    public Forum getRestaurantById(int resId) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Forum restaurant = null;
        try {
            String query = "SELECT * FROM Forum WHERE id = ?";
            conn = getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, resId);
            rs = ps.executeQuery();
            while (rs.next()) {
                restaurant = new Forum(
                        rs.getInt("id"),
                        rs.getInt("userId"),
                        rs.getString("name"),
                        rs.getString("previewImgSrc"),
                        rs.getFloat("rate"));
            }
        } catch (ClassNotFoundException | NumberFormatException | SQLException e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(conn);
        }
        return restaurant;
    }

    @Override
    public List<Feedback> getRestaurantFeedBack(int resId, int pageIndex,
            int itemsPerPage, String filterRate) throws Exception {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Feedback> listFeedback = new ArrayList<>();
        try {
            int paramCount = 0;
            int firstRecord = (pageIndex - 1) * itemsPerPage + 1;
            int lastRecord = pageIndex * itemsPerPage;
            String query = "SELECT * FROM(SELECT ROW_NUMBER() OVER \n"
                    + "(ORDER BY id DESC) AS rn, * FROM Feedback\n"
                    + " WHERE forumId = ? AND rate like ? ) \n"
                    + "AS x WHERE rn BETWEEN ? AND ?";
            conn = getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, resId);
            ps.setString(2, "%" + filterRate + "%");
            ps.setInt(3, firstRecord);
            ps.setInt(4, lastRecord);
            rs = ps.executeQuery();
            while (rs.next()) {
                Feedback feedback = new Feedback(
                        rs.getInt("id"),
                        rs.getInt("forumId"),
                        rs.getString("userName"),
                        rs.getString("feedback"),
                        rs.getDate("feedbackDate"),
                        rs.getInt("rate"));
                listFeedback.add(feedback);
            }
        } catch (ClassNotFoundException | NumberFormatException | SQLException e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(conn);
        }
        return listFeedback;
    }

    @Override
    public int getTotalFeedback(int resId, String filterRate) throws Exception {

        Connection conn = null;
        int feedbackCount = 0;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "SELECT COUNT(*) FROM Feedback \n"
                    + "WHERE forumId = ? AND rate LIKE ?";
            conn = getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, resId);
            ps.setString(2, "%" + filterRate + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                feedbackCount = rs.getInt(1);
                break;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            throw ex;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(conn);
        }
        return feedbackCount;
    }

    @Override
    public boolean insertFeedback(Feedback feedback) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "INSERT INTO Feedback (forumId, userName,\n"
                    + "feedback, feedbackDate, rate) VALUES (?, ?, ?, ?, ?)";
            conn = getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, feedback.getForumId());
            ps.setString(2, feedback.getUserName());
            ps.setString(3, feedback.getFeedback());
            ps.setDate(4, feedback.getFeedbackDate());
            ps.setInt(5, feedback.getUserRate());
            ps.executeUpdate();
        } catch (ClassNotFoundException | NumberFormatException | SQLException e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(conn);
        }
        return true;
    }

    @Override
    public List<ForumImage> getRestaurantImages(int resId) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<ForumImage> listImg = new ArrayList<>();
        try {
            String query = "SELECT * FROM ForumImage where forumId = ?";
            conn = getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, resId);
            rs = ps.executeQuery();
            while (rs.next()) {
                ForumImage restaurantImg = new ForumImage(
                        rs.getInt("id"),
                        rs.getInt("forumId"),
                        rs.getString("imgSource"),
                        rs.getString("imgDescription"));
                listImg.add(restaurantImg);
            }
        } catch (ClassNotFoundException | NumberFormatException | SQLException e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(conn);
        }
        return listImg;
    }

    @Override
    public void insertPost(int id, Forum forum) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "  insert into Forum (userId,name,previewImgSrc)\n"
                    + "  values (?,?,?)";
            conn = getConnection();
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, id);
            ps.setString(2, forum.getResName());
            ps.setString(3, forum.getPreviewImgSrc());
            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
            if (rs.next()) {
                insertImage(rs.getInt(1), forum.getPreviewImgSrc(), conn);
            }

        } catch (ClassNotFoundException | NumberFormatException | SQLException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            Logger.getLogger(ForumDetailDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                closeResultSet(rs);
                closePreparedStatement(ps);
                closeConnection(conn);
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }

    public void insertImage(int id, String image, Connection conn) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "insert into ForumImage (forumId, imgSource)\n"
                    + "  values (?,?)";
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, image);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                closeResultSet(rs);
                closePreparedStatement(ps);
                closeConnection(conn);
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }

}

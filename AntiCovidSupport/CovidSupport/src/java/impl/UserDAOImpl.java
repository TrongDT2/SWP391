/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package impl;

import DAO.LoginDAO;
import DAO.ManagerAccountDAO;
import DBContext.DBContext;
import dao.UserDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Article;
import model.Category;
import model.News;
import model.Role;

public class UserDAOImpl extends DBContext implements UserDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public Account login(String username, String password) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = getConnection(); //get connection
            String sql = "select * from UserInfo where username = ? and password = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUser_id(rs.getInt("User_id"));
                a.setUsername(username);
                a.setPassword(password);
                a.setPhone(rs.getInt("Phone"));
                a.setImage(rs.getString("Image"));
                a.setEmail(rs.getString("Email"));
                a.setAddress(rs.getString("Address"));
                a.setRole_id(rs.getInt("Role_id"));
                a.setDate(rs.getString("Dob"));
                return a;
            }

        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public Account checkAccountExist(String username) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            String sql = "select username from UserInfo where username = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, username);

            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUsername(username);
                return a;
            }

        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void register(String username, String password, String email, String phone, String address, String dob) {

        try {
            con = getConnection();
            String sql = "Insert into UserInfo (Username, Email, Password, Phone, Address, Dob) values (?,?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.setString(6, dob);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();

        try {
            String sql = "select User_id,Username,Phone,Email,Address,Dob,Role_id from UserInfo";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUser_id(rs.getInt("User_id"));
                a.setUsername(rs.getString("Username"));
                a.setPhone(rs.getInt("Phone"));
                a.setEmail(rs.getString("Email"));
                a.setAddress(rs.getString("Address"));
                a.setDate(rs.getString("Dob"));
                a.setRole_id(rs.getInt("Role_id"));
                list.add(a);
            }
        } catch (Exception ex) {
            Logger.getLogger(ManagerAccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void UpdateProfile(String address, String phone, String date, String username) {

        try {
            con = new DBContext().getConnection();
            String sql = "update UserInfo set Address=?, Phone= ?, Dob=? where Username=?";
            ps = con.prepareStatement(sql);
            ps.setString(1, address);
            ps.setString(2, phone);
            ps.setString(3, date);
            ps.setString(4, username);
            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Account getAccountByUsername(String username) {

        try {
            String sql = "select * from UserInfo where Username = ? ";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUser_id(rs.getInt("User_id"));
                a.setUsername(rs.getString("Username"));
                a.setPhone(rs.getInt("Phone"));
                a.setEmail(rs.getString("Email"));
                a.setAddress(rs.getString("Address"));
                a.setDate(rs.getString("Dob"));
                a.setRole_id(rs.getInt("Role_id"));
                return a;
            }
        } catch (Exception ex) {
            Logger.getLogger(ManagerAccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Role> getAllRole() {
        List<Role> list = new ArrayList<>();
        try {
            String sql = "select * from Role";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Role r = new Role();
                r.setRole_id(rs.getInt("Role_id"));
                r.setRole_name(rs.getString("Role_name"));
                list.add(r);
            }
        } catch (Exception ex) {
            Logger.getLogger(ManagerAccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void Delete(String username) {

        try {
            con = new DBContext().getConnection();
            String sql = "delete from UserInfo  where  username = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void EditProfile(String address, String phone, String date, String username, String role) {

        try {
            con = new DBContext().getConnection();
            String sql = "update UserInfo set Address=?, Phone= ?, Dob=?, Role_id =? where Username=?";
            ps = con.prepareStatement(sql);
            ps.setString(1, address);
            ps.setString(2, phone);
            ps.setString(3, date);
            ps.setString(4, role);
            ps.setString(5, username);
            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Article> getAllArticles() {
        ArrayList<Article> listArticle = new ArrayList<Article>();

        DBContext db = new DBContext();
        try {
            con = new DBContext().getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT [News_id]\n"
                    + "      ,[Content]\n"
                    + "      ,[Image]\n"
                    + "      ,[Date]\n"
                    + "      ,[Category_id]\n"
                    + "      ,[title]\n"
                    + "      ,[author]\n"
                    + "  FROM [CovidSP].[dbo].[News]");
//                    + "  left join Category on News.Category_id = Category.Category_id");
            while (rs.next()) {
                Article article = new Article();
                article.setId(Integer.parseInt(rs.getString("News_id")));
                article.setContent(rs.getString("Content"));
                article.setDate(rs.getString("Date"));
                article.setTitle(rs.getString("title"));
                article.setAuthor(rs.getString("author"));

                listArticle.add(article);
            }
            rs.close();
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listArticle;
    }

    public void addArticle(Article art) {

        DBContext db = new DBContext();
        try {
            String sql = "INSERT INTO [dbo].[News]\n"
                    + "(title, author, [Content],[Date])\n"
                    + "VALUES (?,?,?,getdate())";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, art.getTitle());
            stmt.setString(2, art.getAuthor());
            stmt.setString(3, art.getContent());

            stmt.executeUpdate();
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean deleteArtById(int id) {
        DBContext db = new DBContext();
        try {
            String sql = "DELETE FROM [dbo].[News]\n"
                    + "      WHERE [News_id] = ?";
            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setInt(1, id);
            return stmt.execute();
        } catch (SQLException ex) {
        }
        return false;

    }

    public Article getArticlByID(int id) {
        Article article = new Article();
        String query = "SELECT * FROM dbo.News WHERE [News_id] = " + id;

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                article.setId(Integer.parseInt(rs.getString("News_id")));
                article.setContent(rs.getString("Content"));
                article.setImage(rs.getString("Image"));
                article.setDate(rs.getString("Date"));
                article.setTitle(rs.getString("title"));
                article.setAuthor(rs.getString("author"));

            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return article;
    }

    public void updateArticle(Article art) {

        DBContext db = new DBContext();
        try {
            String sql = "UPDATE [dbo].[News]\n"
                    + "   SET [Content] = ?\n"
                    + "      ,[title] = ?\n"
                    + "      ,[author] = ?\n"
                    + " WHERE [News_id]=?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(4, art.getId());
            stmt.setString(1, art.getContent());
            stmt.setString(2, art.getTitle());
            stmt.setString(3, art.getAuthor());
            stmt.executeUpdate();
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<News> getAllNews() {
        List<News> list = new ArrayList<>();
        try {
            String sql = "select * from News";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News();
                n.setNews_id(rs.getInt("News_id"));
                n.setContent(rs.getString("Content"));
                n.setImage(rs.getString("Image"));
                n.setDate(rs.getString("Date"));
                n.setCategory_id(rs.getInt("Category_id"));
                n.setTitle(rs.getString("title"));
                n.setAuthor(rs.getString("author"));
                list.add(n);
            }
        } catch (Exception ex) {
            Logger.getLogger(ManagerAccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public News GetNewsById(String id) {

        try {
            con = new DBContext().getConnection();
            String sql = "select * from News where News_id =?";
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News();
                n.setNews_id(rs.getInt("News_id"));
                n.setContent(rs.getString("Content"));
                n.setImage(rs.getString("Image"));
                n.setDate(rs.getString("Date"));
                n.setCategory_id(rs.getInt("Category_id"));
                n.setTitle(rs.getString("title"));
                n.setAuthor(rs.getString("author"));
                return n;
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void EditNewsManager(News n) {

        try {
            con = new DBContext().getConnection();
            String sql = "update News set Content = ?, Image = ?, Date = ?, Category_id = ?, title = ?, author = ? where News_id =?";
            ps = con.prepareStatement(sql);
            ps.setString(1, n.getContent());
            ps.setString(2, n.getImage());
            ps.setString(3, n.getDate());
            ps.setInt(4, n.getCategory_id());
            ps.setString(5, n.getTitle());
            ps.setString(6, n.getAuthor());
            ps.setInt(7, n.getNews_id());
            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public List<Category> getCategory() {
        List<Category> list = new ArrayList<>();
        try {
            String sql = "select * from Category";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setCategory_id(rs.getInt("Category_id"));
                c.setName(rs.getString("Name"));
                list.add(c);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void insertNewsManager(News n) {

        try {
            con = new DBContext().getConnection();
            String sql = "insert into News(News_id,Content,Image,Date,Category_id,title,author) values (?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setInt(1, n.getNews_id());
            ps.setString(2, n.getContent());
            ps.setString(3, n.getImage());
            ps.setString(4, n.getDate());
            ps.setInt(5, n.getCategory_id());
            ps.setString(6, n.getTitle());
            ps.setString(7, n.getAuthor());

            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public void DeleteNews(String id) {

        try {
            con = new DBContext().getConnection();
            String sql = "delete from News  where  News_id = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

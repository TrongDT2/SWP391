/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.spi.DirStateFactory;
import model.Account;

/**
 *
 * @author Aur
 */
public class LoginDAO {

    DBContext db;
    Connection conn;

    public LoginDAO() {
        try {
            db = new DBContext();
            conn = db.connection;
            System.out.println("ket noi thanh cong");
        } catch (Exception e) {
            System.out.println("loi " + conn);
        }
    }

    public Account Login(String username, String password) {

        try {
            String sql = "select username, password from UserInfo where username = ? and password = ?";
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUsername(username);
                a.setPassword(password);
                return a;
            }

        } catch (Exception ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account checkAccountExist(String username) {

        try {
            String sql = "select username from UserInfo where username = ?";
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, username);
            
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUsername(username);
                return a;
            }

        } catch (Exception ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void register(String username, String password, String email) {
        try {
            String sql = "Insert into UserInfo (Username, Email, Password) values (?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package impl;

import DBContext.DBContext;
import dao.UserDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

public class UserDAOImpl extends DBContext implements UserDAO {

    @Override
    public Account login(String username, String password) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = getConnection(); //get connection
            String sql = "select username, password from UserInfo where username = ? and password = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUsername(username);
                a.setPassword(password);
                return a;
            }

        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            this.closeResultSet(rs);
            this.closePreparedStatement(ps);
            this.closeConnection(con);
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
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);

            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUsername(username);
                return a;
            }

        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            this.closeResultSet(rs);
            this.closePreparedStatement(ps);
            this.closeConnection(con);
        }
        return null;
    }

    @Override
    public void register(String username, String password, String email) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            String sql = "Insert into UserInfo (Username, Email, Password) values (?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            this.closeResultSet(rs);
            this.closePreparedStatement(ps);
            this.closeConnection(con);
        }
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package impl;

import DAO.ManagerAccountDAO;
import DBContext.DBContext;
import dao.UserDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

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
    public void register(String username, String password, String email) {

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
        }
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();

        try {
            String sql = "select User_id,Username,Phone,Email,Address,Dob from UserInfo";
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
                list.add(a);
            }
        } catch (Exception ex) {
            Logger.getLogger(ManagerAccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

}

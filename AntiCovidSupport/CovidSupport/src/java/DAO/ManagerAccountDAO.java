/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Aur
 */
public class ManagerAccountDAO {
    
    DBContext db;
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    
    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        
        try {
            String sql = "select User_id,Username,Phone,Email,Address,Dob from UserInfo";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
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
        return null;
    }
}

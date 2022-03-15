/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBContext.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.spi.DirStateFactory;
import model.Account;

/**
 *
 * @author Aur
 */
public class UpdateProfileDAO {

    DBContext db;
    Connection conn;

    public UpdateProfileDAO() {
        try {
            db = new DBContext();
            conn = db.getConnection();
            System.out.println("ket noi thanh cong");
        } catch (Exception e) {
            System.out.println("loi " + conn);
        }
    }

    public void UpdateProfile(String address, String phone, String date, String username, String img) {
        try {
            String sql = "update UserInfo set Address=?, Phone= ?, Dob=?, Image=? where Username=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, address);
            ps.setString(2, phone);
            ps.setString(3, date);
            ps.setString(4, img);
            ps.setString(5, username);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

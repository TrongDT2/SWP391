/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package impl;

import DBContext.DBContext;
import dao.BoardnewDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Boardnew;

public class BoardnewDaoImpl extends DBContext implements BoardnewDao {

    @Override
    public Boardnew get(int id) {

        String sql = "SELECT * FROM boardnew WHERE id = ? ";
        Connection con;
        try {
            con = getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Boardnew boardnew = new Boardnew();

                boardnew.setId(rs.getString("id"));
                boardnew.setTitle(rs.getString("title"));
                boardnew.setContent(rs.getString("content"));
                boardnew.setImage_link(rs.getString("image_link"));
                boardnew.setAuthor(rs.getString("author"));
                boardnew.setCreated(rs.getString("created"));
                //System.out.println("cc"+rs.getString("title"));
                return boardnew;

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Boardnew> getAll() {
        List<Boardnew> boardnews = new ArrayList<Boardnew>();
        String sql = "SELECT * FROM boardnew";

        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Boardnew boardnew = new Boardnew();

                boardnew.setId(rs.getString("id"));
                boardnew.setTitle(rs.getString("title"));
                boardnew.setContent(rs.getString("content"));
                boardnew.setImage_link(rs.getString("image_link"));
                boardnew.setAuthor(rs.getString("author"));
                boardnew.setCreated(rs.getString("created"));
                boardnews.add(boardnew);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return boardnews;
    }

}

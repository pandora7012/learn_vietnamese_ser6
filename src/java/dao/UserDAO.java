/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import bean.User;
import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.DBConnection;

public class UserDAO {
    private Connection conn = (Connection) DBConnection.getConnection();
    
//    public static boolean uploadImages
    public User checkLogin(String username, String password){
        User user = null;
        try {
            String sql = "Select * from tbl_user where username = ? and t_password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                if(rs.getBlob("avt") == null){
                }
                user = new User(rs.getString("username"),
                                rs.getString("t_password"),
                                rs.getString("email"),
                                rs.getInt("numStar"),
                                rs.getInt("numLession"),
                                rs.getString("fullname"),
                                rs.getString("gender")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
       return user;
    }
    public boolean addNewUser(User user){
        boolean set = false;
        
        try{
            String query = "insert into tbl_user(fullname, username, t_password, avt, numStar, numLession, email) values(?,?,?,?,?,?,?)";
            PreparedStatement pt = this.conn.prepareStatement(query);
            pt.setString(1, user.getFull_name());
            pt.setString(2, user.getUsername());
            pt.setString(3, user.getPassword());
            InputStream in = new FileInputStream("E:\\University\\Năm 3\\Web Programing\\BTL_Project\\BTL\\learn_vietnamese_ser6\\web\\images\\user_2.png");
            pt.setBlob(4, in);
            pt.setInt(5, 0);
            pt.setInt(6, 0);
            pt.setString(7, user.getEmail());
            pt.execute();
            set = true;
            return set;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    public boolean checkExist(String username){
        String query = "select * from tbl_user where username = ?";
        try{
            PreparedStatement ps = this.conn.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
    public byte[] getImageData(String username){
        String sql = null;
        try {
            sql = "select avt from tbl_user where username = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getBytes("avt");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}

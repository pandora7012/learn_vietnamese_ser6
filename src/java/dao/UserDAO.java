/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import bean.User;
import java.io.*;
import java.sql.*;
import util.DBConnection;

public class UserDAO {
    private Connection conn = (Connection) DBConnection.getConnection();
    public User checkLogin(String username, String password){
        User user = null;
        byte b[];
        Blob blob;
        try {
            String sql = "Select * from tbluser where username = ? and password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setID(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setFull_name(rs.getString("full_name"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                return user;
//                InputStream ins = new FileInputStream(new File("/"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    public boolean addNewUser(User user){
        boolean set = false;
        try{
            String query = "insert into tbluser(username, password, full_name, email) values(?,?,?,?)";
            PreparedStatement pt = this.conn.prepareStatement(query);
            pt.setString(1, user.getUsername());
            pt.setString(2, user.getPassword());
            pt.setString(3, user.getFull_name());
            pt.setString(4, user.getEmail());
            pt.executeUpdate();
            set = true;
            return set;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    public boolean checkExist(String username){
        String query = "select * from tbluser where username = ?";
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
}

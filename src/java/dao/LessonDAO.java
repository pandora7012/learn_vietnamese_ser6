/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Lesson;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.DBConnection;

/**
 *
 * @author Pan
 */
public class LessonDAO {

    private Connection conn = (Connection) DBConnection.getConnection();

    public void addLesson(Lesson lesson) {

        try {
            String query = "INSERT INTO tbl_lesson (name,  writeCa, writeNo, printCa, printNo, sound) VALUES (?,?,?,?,?,?)";
            PreparedStatement pt = this.conn.prepareStatement(query);
            pt.setString(1, lesson.getLessonName());
            pt.setString(2, lesson.getWriteCa());
            pt.setString(3, lesson.getWriteNo());
            pt.setString(4, lesson.getPrintCa());
            pt.setString(5, lesson.getPrintNo());
            pt.setString(6, lesson.getSound());
            pt.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean checkIfLessonExists(int id) {
        boolean ifExist = false;
        try {
            String sql = "Select * from tbl_lesson where id = ? ";
            PreparedStatement ps = conn.prepareStatement(sql); //adasds
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                ifExist = true; 

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ifExist;
    }

    public int GetLastLessonID() {
        int currentID = -1;
        try {
            String query = "Select tbl_lesson.idlesson from tbl_lesson";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                currentID = rs.getInt("idlesson");
            }
        } catch (SQLException ex) {
            Logger.getLogger(LessonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return currentID;
    }
}

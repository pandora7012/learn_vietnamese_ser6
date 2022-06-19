/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import bean.Lesson;
import util.DBConnection;

/**
 *
 * @author Pan
 */
public class LessonDAO {
    
    private Connection conn = (Connection) DBConnection.getConnection();
    
    public void addLesson(Lesson lesson){
        
        try
        {
            String query = "INSERT INTO tbl_lesson (idlession, writeCa, writeNo, printCa, printNo, sound) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pt = this.conn.prepareStatement(query);
            pt.setString(1, lesson.getWriteCa());
            pt.setString(2, lesson.getWriteNo());
            pt.setString(3, lesson.getPrintCa());
            pt.setString(4, lesson.getPrintNo());
            pt.setString(5, lesson.getSound());
            pt.execute();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}

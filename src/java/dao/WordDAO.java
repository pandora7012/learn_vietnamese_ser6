package dao;

import bean.Lesson;
import bean.Word;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class WordDAO {

    private Connection conn = (Connection) DBConnection.getConnection();

    public void addWord(Word word){

        try
        {
            String query = "INSERT INTO tbl_word VALUES (idword, img, sound, word , idLession ) VALUES (?,?,?,?,?)";
            PreparedStatement pt = this.conn.prepareStatement(query);
            pt.setString(1, word.getImg());
            pt.setString(2, word.getSound());
            pt.setString(3, word.getWord());
            pt.setInt(4,  word.getIdLession());
            pt.execute();
        }
        catch(Exception e){
            e.printStackTrace();
        }


    }
}

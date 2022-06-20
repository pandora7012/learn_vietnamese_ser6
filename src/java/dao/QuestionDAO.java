package dao;

import bean.Lesson;
import bean.Question;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import javax.resource.cci.ResultSet;

public class QuestionDAO {
    private Connection conn = (Connection) DBConnection.getConnection();

    public boolean addQuestion(Question ques){
        boolean result = false;
        try
        {
            String query = "INSERT INTO tbl_question (idquestion, question, ans1, ans2, ans3, ans4, numStar, idlession) VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement pt = this.conn.prepareStatement(query);
            pt.setString(1, ques.getQuestion());
            pt.setString(2, ques.getAns1());
            pt.setString(3, ques.getAns2());
            pt.setString(4, ques.getAns3());
            pt.setString(5, ques.getAns4());
            pt.setInt(6, ques.getNumStar());
            pt.setInt(7, ques.getIdLession());
            pt.execute();
            result = true ;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return result;
    }

    private ArrayList<Question> getQuestionViaLessonID(int id){
        String sql = "Select * from tbl_user";
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
                
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

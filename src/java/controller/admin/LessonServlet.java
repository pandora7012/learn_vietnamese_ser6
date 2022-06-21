/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import bean.Lesson;
import bean.Question;
import bean.Word;
import dao.LessonDAO;
import dao.QuestionDAO;
import dao.WordDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Quach Dinh Kien
 */
public class LessonServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // add lesson

        String lessonName = request.getParameter("select_sub");

        String tenBaiHoc = request.getParameter("name_lesson");
        String chuVietHoa = request.getParameter("write_upper");
        String chuVietThuong = request.getParameter("write_lower");
        String chuInHoa = request.getParameter("print_upper");
        String chuInThuong = request.getParameter("print_lower");
        String amThanh = request.getParameter("sound_lesson");

        // add word 
        String contentWord = request.getParameter("content_word");
        String soundWord = request.getParameter("sound_word");
        String imgWord = request.getParameter("img_word");

        // add question
        String question = request.getParameter("question");
        String ans1 = request.getParameter("ans1");
        String ans2 = request.getParameter("ans2");
        String ans3 = request.getParameter("ans3");
        String ans4 = request.getParameter("ans4");

        LessonDAO lessonDao = new LessonDAO();
        QuestionDAO questionDao = new QuestionDAO();
        WordDAO wordDao = new WordDAO();

        Lesson ls = new Lesson();
        Question qs = new Question();
        Word word = new Word();
     //   request.setAttribute("");
        if (lessonName.equals("none")){
            ls.setLessonName(tenBaiHoc);
            ls.setWriteCa(chuVietHoa);
            ls.setWriteNo(chuVietThuong);
            ls.setWriteCa(chuInHoa);
            ls.setWriteNo(chuInThuong);
            ls.setSound(amThanh);
            request.setAttribute("listLesson", ls);
        }else{
            // word.setId(ID_Increment+1);
            // word.setImg(imgWord);
            // word.setSound(soundWord);
            // word.setWord(contentWord);

            // qs.setQuestion(question);
            // qs.setAns1(ans1);
            // qs.setAns2(ans2);
            // qs.setAns3(ans3);
            // qs.setAns4(ans4);
            // qs.setIdLession(ID_Increment+1);
        }
            if(lessonDao.addLesson(ls)){
                request.setAttribute("message", "Thêm thành công");
            }else{
                request.setAttribute("message", "Lỗi thêm bài học");
            }
            // wordDao.addWord(word);
            // questionDao.addQuestion(qs);
        // else {
        //     int id = lessonDao.GetIDViaName(lessonName);
        //     word.setId(id);
        //     word.setImg(imgWord);
        //     word.setSound(soundWord);
        //     word.setWord(contentWord);
        //     qs.setQuestion(question);
        //     qs.setAns1(ans1);
        //     qs.setAns2(ans2);
        //     qs.setAns3(ans3);
        //     qs.setAns4(ans4);
        //     qs.setIdLession(id);

        //     wordDao.addWord(word);
        //     questionDao.addQuestion(qs);
        // }
        RequestDispatcher rd = request.getRequestDispatcher("/admin/addLesson.jsp");
        rd.forward(request, response);
    }


   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}

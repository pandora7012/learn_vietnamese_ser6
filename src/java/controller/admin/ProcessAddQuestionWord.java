/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Question;
import bean.Word;
import dao.LessonDAO;
import dao.QuestionDAO;
import dao.UserDAO;
import dao.WordDAO;

/**
 *
 * @author Quach Dinh Kien
 */
public class ProcessAddQuestionWord extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String contentWord = request.getParameter("content_word");
        String soundWord = request.getParameter("sound_word");
        String imgWord = request.getParameter("img_word");

        // add question
        String question = request.getParameter("question");
        String ans1 = request.getParameter("ans1");
        String ans2 = request.getParameter("ans2");
        String ans3 = request.getParameter("ans3");
        String ans4 = request.getParameter("ans4");
     //   String imgQues = request.getParameter("sound_question");

        QuestionDAO questionDao = new QuestionDAO();
        WordDAO wordDao = new WordDAO();
        LessonDAO lessonDAO = new LessonDAO();

        String message = "";
        request.setAttribute("message", message);
        
        String chooseID = request.getParameter("select_sub");
        if (chooseID.equals("none")) {
            message = "Please choose a lesson!";
            request.setAttribute("message", message);
            RequestDispatcher rd = request.getRequestDispatcher("/addLesson.jsp");
            rd.forward(request, response);
        } else {
            int lessonID = Integer.parseInt(request.getParameter("select_sub"));
            Word word = new Word();
            word.setIdLession(lessonID);
            word.setSound(soundWord);
            word.setImg(imgWord);
            word.setWord(contentWord);

            Question ques = new Question();
            ques.setQuestion(question);
            ques.setAns1(ans1);
            ques.setAns2(ans2);
            ques.setAns3(ans3);
            ques.setAns4(ans4);
            // ques.set(imgQues);

            wordDao.addWord(word);
            questionDao.addQuestion(ques);
        }

    }
    // create function convert text-to-speech use google api

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
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

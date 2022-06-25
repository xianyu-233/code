package Severlet.Pattern2;

import Entity.vocabulary;
import Tool.Accuracy;
import Tool.Algorithm;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.LinkedList;

@WebServlet(name = "Pattern2ResultServlet",urlPatterns = {"/result2"})
public class Pattern2ResultServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //读出数据链表
        HttpSession session = request.getSession();
        LinkedList<vocabulary> wordLink = (LinkedList<vocabulary>) session.getAttribute("wordLink");

        int wordNum= 0;
        try {
            wordNum = Algorithm.SecondAlgorithm(wordLink);
            request.setAttribute("wordsNum",wordNum);
            request.setAttribute("num",wordLink.size());
            request.setAttribute("knowNum", Accuracy.GetRight(wordLink));
            request.setAttribute("accuracy",(int)((double)(Accuracy.GetRight(wordLink))/(double)wordLink.size()*100));


        } catch (SQLException e) {
            e.printStackTrace();
        }



        //转跳页面
        request.getRequestDispatcher("/result.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

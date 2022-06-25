package Severlet.Pattern2;

import DAO.vocabularyDAO;
import DAO.vocabularyDAOImp;
import Entity.vocabulary;
import JDBC.JDBCTool;
import Tool.RandomNum;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedList;

@WebServlet(name = "Pattern2Servlet",urlPatterns = {"/pattern2"})
public class Pattern2Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //在开始处创建回答的单词链表容器
        LinkedList<vocabulary> Directory = new LinkedList<>();
        //生成第一个单词
        vocabularyDAO vocabularyDAO = new vocabularyDAOImp();
        try {
            //生成第一个单词的随机数
            int TotalNum = JDBCTool.GetTotalNumOfDB();
            int rand = RandomNum.CreateRandNum(0, TotalNum);
            //获取单词
            vocabulary vocabulary = vocabularyDAO.getVocabulary(rand);
            //设置单词的难度等级
            int level = rand/(TotalNum/10)+1;
            vocabulary.setLevel(level);
            //设置认识的单词数
            int knowNum=0;
            //测试单词的个数
            int TestNum = 0;

            //将单词存起来
            HttpSession session = request.getSession();
            session.setAttribute("word",vocabulary);
            session.setAttribute("wordLink",Directory);
            //保存认识的单词数
            session.setAttribute("knowNum",knowNum);
            //保存单词数总数
            session.setAttribute("TotalNum",TotalNum);
            //将第一个单词放到页面中
            request.setAttribute("wordName",vocabulary.getWords());
            //测试单词的个数
            session.setAttribute("TestNum",TestNum);
        } catch (Exception e) {
            e.printStackTrace();
        }


        //转跳页面
        request.getRequestDispatcher("/pattern2.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

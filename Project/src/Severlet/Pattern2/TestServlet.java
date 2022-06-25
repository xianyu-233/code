package Severlet.Pattern2;

import DAO.vocabularyDAO;
import DAO.vocabularyDAOImp;
import Entity.vocabulary;
import Tool.RandomNum;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedList;

@WebServlet(name = "TestServlet",urlPatterns = {"/Test"})
public class TestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String value = (String)request.getParameter("botton");
        //读取数据
        HttpSession session = request.getSession();
        //读出数据链表
        LinkedList<vocabulary> wordLink = (LinkedList<vocabulary>) session.getAttribute("wordLink");
        //读出单词
        vocabulary word = (vocabulary) session.getAttribute("word");
        //读出单词总数
        int TotalNum = (int) session.getAttribute("TotalNum");
        //生成单词
        vocabularyDAO vocabularyDAO = new vocabularyDAOImp();
        //测试单词的个数
        int TestNum = (int) session.getAttribute("TestNum");
        request.setAttribute("TestNum",TestNum);

        //认识
        if (value.equals("1"))
        {
            //将认识的单词放入链表中以待计算
            word.setStatue(true);
            wordLink.add(word);
            //根据第一个的结果生成下一个单词
            int level=0;
            //小于10的自动加1
            if (word.getLevel()<10)
            {
                level = word.getLevel()+1;
            }
            //大于10的不变
            else {
                level = word.getLevel();
            }
            //生成单词
            int randNum = RandomNum.CreateRandNum((level-1)*(TotalNum/10),level*(TotalNum/10));
            try {
                vocabulary vocabulary = vocabularyDAO.getVocabulary(randNum);
                vocabulary.setLevel(level);
                request.setAttribute("wordName",vocabulary.getWords());

                TestNum+=1;

                //存储数据
                session.setAttribute("word",vocabulary);
                session.setAttribute("TestNum",TestNum);
                session.setAttribute("wordLink",wordLink);
            } catch (Exception e) {
                e.printStackTrace();
            }



            //转跳页面
            request.getRequestDispatcher("/pattern2.jsp").forward(request,response);
        }

        //不认识
        else if (value.equals("2"))
        {
            wordLink.add(word);
            int level = 0;
            if (word.getLevel()==1)
            {
                level=1;
            }
            else
            {
                level=word.getLevel()-1;
            }

            //生成单词
            int randNum = RandomNum.CreateRandNum((level-1)*(TotalNum/10),level*(TotalNum/10));
            try {
                vocabulary vocabulary = vocabularyDAO.getVocabulary(randNum);
                vocabulary.setLevel(level);
                request.setAttribute("wordName",vocabulary.getWords());
                TestNum+=1;

                //存储数据
                session.setAttribute("TestNum",TestNum);
                session.setAttribute("word",vocabulary);
                session.setAttribute("wordLink",wordLink);

            } catch (Exception e) {
                e.printStackTrace();
            }


            //转跳页面
            request.getRequestDispatcher("/pattern2.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package Severlet.Pattern1;

import Entity.vocabulary;
import Tool.WordsDirectory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Pattern1Servlet",urlPatterns = {"/pattern1"})
public class Pattern1Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //单词的列数
        int columns = 5;
        //单词的行数
        int rows = 10;

        try {
            //生成字典（字典已经有单词了）
            vocabulary[] Directory =  WordsDirectory.GetWordsDirectory(rows,columns);
            //一个个地将单词放入request中
            for (int i = 0;i<rows;i++)
                for (int j=0;j<columns;j++)
                    request.setAttribute(("wordsname" + (i * columns + j)), Directory[i * columns + j].getWords());

            //用session存放字典
            HttpSession session = request.getSession();
            session.setAttribute("Directory",Directory);

        } catch (Exception e) {
            e.printStackTrace();
        }




        //转跳页面
        request.getRequestDispatcher("/pattern1.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

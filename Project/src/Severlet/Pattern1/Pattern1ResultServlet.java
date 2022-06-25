package Severlet.Pattern1;

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

@WebServlet(name = "Pattern1ResultServlet",urlPatterns = {"/result1"})
public class Pattern1ResultServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //将复选框的结果读取出来
        String [] result = request.getParameterValues("checkbox1");

        //从session中读出字典
        HttpSession session = request.getSession();
        vocabulary[] directory = (vocabulary[]) session.getAttribute("Directory");

        //通过算法得到结果
        int wordsNum = 0;
        //答对率
        double accuracy = Accuracy.GetAccuracy(result);


        //计算单词数
        try {
            wordsNum = Algorithm.FirstAlgorithm(directory,result);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        //传输要显示的变量
        request.setAttribute("num",result.length);
        request.setAttribute("knowNum",accuracy*result.length);
        request.setAttribute("wordsNum",wordsNum);
        request.setAttribute("accuracy",accuracy*100);

        //转跳页面
        request.getRequestDispatcher("/result.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

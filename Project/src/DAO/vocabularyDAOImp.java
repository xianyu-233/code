package DAO;

import Entity.vocabulary;
import JDBC.JDBCTool;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class vocabularyDAOImp implements vocabularyDAO {
    @Override
    //读取单词
    public vocabulary getVocabulary(int Frequency) throws Exception {
        //连接数据库
        Connection connection = JDBCTool.GetConnection();
        Statement statement = connection.createStatement();

        //查找数据
        String sql= "select * from vocabulary WHERE frequency= '"+Frequency+"' ";
        ResultSet resultSet = statement.executeQuery(sql);

        //将数据保存起来
        vocabulary vocabulary = new vocabulary();
        while (resultSet.next())
        {
            vocabulary.setWords(resultSet.getString("Words"));
            vocabulary.setFrequency(resultSet.getInt("Frequency"));
            vocabulary.setStatue(false);
        }

        //返回单词
        return vocabulary;
    }
}

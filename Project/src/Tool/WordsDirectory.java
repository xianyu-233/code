package Tool;

import DAO.vocabularyDAO;
import DAO.vocabularyDAOImp;
import Entity.vocabulary;
import JDBC.JDBCTool;

public class WordsDirectory {

    static public vocabulary [] GetWordsDirectory(int rows, int columns) throws Exception {

        vocabularyDAO vocabularyDAO = new vocabularyDAOImp();

        //创建单词矩阵
        vocabulary [] Directory = new vocabulary[rows*columns];
        //获取数据库中单词的条数
        int TotalNum = JDBCTool.GetTotalNumOfDB();
        int begin1=0;int begin2=0;
        int end1=0; int end2=0;
        int RandNum = 0;
        //逐个读出单词，并封装到字典中
        for (int i=0;i<rows;i++) {
            //生成一行单词的索引
//            int[] array = RandomNum.CreateRandArray(i * (TotalNum / rows), (i + 1) * (TotalNum / rows), columns);
            //生成第i行单词的生成范围
            begin1 = i * (TotalNum / rows);
            end1 = (i + 1) * (TotalNum / rows);

            for(int j=0;j<columns;j++)
            {
//                Directory[i*columns+j] = vocabularyDAO.getVocabulary(array[j]);
                //生成第i行第j列单词的生成范围
                begin2 = begin1 +j*(end1-begin1)/5;
                end2 = begin1 +(j+1)*(end1-begin1)/5;
                //生成随机数
                RandNum = RandomNum.CreateRandNum(begin2,end2);
                //生成单词
                Directory[i*columns+j] = vocabularyDAO.getVocabulary(RandNum);
                //设置单词的难度等级(括号内加1是为了防止end2可以整除end1-begin1)
                Directory[i*columns+j].setLevel(end2/(end1-begin1+1)+1);
            }

        }

        return Directory;

    }
}

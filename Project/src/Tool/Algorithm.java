package Tool;

import Entity.vocabulary;
import JDBC.JDBCTool;

import java.sql.SQLException;
import java.util.LinkedList;

public class Algorithm {
    //模式一的算法
    public static int FirstAlgorithm(vocabulary[] Directory,String[] result) throws SQLException {
        //预测可能认识的单词总数
        int WordNum=0;
        //设置衰减系数
        double factor = 0.8;
        //设置预测值的临时中间记录变量
        double TempWordNum = 0; double TempFac=1;
        //单词矩阵的行和列
        int rows = Directory[Directory.length-1].getLevel();
        int columns = Directory.length/Directory[Directory.length-1].getLevel();
        //将单词认识状态标记起来
        for (int i=0;i<Directory.length;i++)
        {
            if(result[i].equals("1"))
                Directory[i].setStatue(true);
        }
        //统计过程
        for(int j=0;j<rows;j++)
        {
            //每行答对的个数
            int accuracy=0;
            //计算第j行中第k个的单词
            for (int k=0;k<columns;k++)
            {
                if (result[j*columns+k].equals("1"))
                    accuracy+=1;
            }
            //影响因素
            if (accuracy<3)
                TempFac = TempFac*factor;

            TempWordNum = TempWordNum+ (TempFac * accuracy*(JDBCTool.GetTotalNumOfDB()/(rows*columns)));

        }
        TempWordNum*=TempFac;
        //强制转换
        WordNum = (int)TempWordNum;
        return WordNum;
    }

    //模式二的算法
    public static int SecondAlgorithm(LinkedList<vocabulary> wordLink) throws SQLException {
        //单词估计数
        int num=0;
        //设置基数
        int basicNum = 50;

        //设置惩罚因子
        double punitiveFactor = 0.8;
        //设置奖励因子
        double rewardFactor = 1.3;
        //难度等级系数
        int level=0;
        //计算的临时变量
        double tempNum = 0;
        //预先估计个数
        int preNum = 10;
        //词库单词总数
        int TotalNum = JDBCTool.GetTotalNumOfDB();

        //开始计算
        //对前10个单词进行粗略估算
        LinkedList preLevel = new LinkedList();
        for (int i=0;i<preNum;i++)
        {
            if (wordLink.get(i).getStatue())
                preLevel.add(wordLink.get(i).getLevel());
        }

        int maxValue = Statics.StaticsNum(preLevel);
        //除以2是因为这是一个大致的估计
        tempNum = maxValue*(TotalNum/10)/2;
        num +=(int)tempNum;


        for (int j=preNum;j<wordLink.size();j++)
        {
            //对后续单词进行估算
            //如果是认识的单词
            if (wordLink.get(j).getStatue())
            {
                //判断前面难度系数高答认识，后面难度系数低却不认识的情况
                if (j<wordLink.size()-1)
                {
                    if (wordLink.get(j).getLevel()>wordLink.get(j+1).getLevel())
                        if (wordLink.get(j).getStatue() && !wordLink.get(j+1).getStatue())
                        {
                            level = wordLink.get(j).getLevel();
                            //多乘一个惩罚因子
                            tempNum = punitiveFactor*basicNum*Math.pow(rewardFactor,level);
                            num +=(int)tempNum;
                        }
                }
                else {
                    level = wordLink.get(j).getLevel();
                    //基数乘上奖励因此的难度系数次方
                    tempNum = basicNum*Math.pow(rewardFactor,level);
                    num +=(int)tempNum;
                }
            }

            //如果不是认识的单词
            else if (!wordLink.get(j).getStatue())
            {
                level = wordLink.get(j).getLevel();
                //基数乘上奖励因此的难度系数次方
                tempNum = basicNum*Math.pow(punitiveFactor,10-level);
                num-=(int)tempNum;
            }

        }




        //如果小于0
        if (num<0)
            num=0;
        else if (num>TotalNum)
            num = TotalNum;

        return num;
    }
}

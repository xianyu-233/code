package Tool;

import Entity.vocabulary;

import java.util.LinkedList;

public class Accuracy {
    public static double GetAccuracy(String[] result)
    {
        int temp=0;
        for (int i=0;i<result.length;i++)
            if (result[i].equals("1"))
                temp+=1;
        return (double)temp/(double)result.length;
    }

    //统计答对提数
    public static int GetRight(LinkedList<vocabulary> wordLink)
    {
        int num=0;
        for (int i=0;i<wordLink.size();i++)
        {
            if (wordLink.get(i).getStatue()==true)
                num+=1;
        }
        return num;

    }
}

package Tool;

import java.util.LinkedList;

public class Statics {
    public static int StaticsNum(LinkedList linkedlist)
    {
        //统计各等级的出现次数
        int[] frequency = new int[10];
        for (int i=0;i<linkedlist.size();i++)
            frequency[(int) linkedlist.get(i)-1]+=1;

        //找到最大值
        int max=frequency[0];   //定义次数
        int maxValue=0;            //定义最大值
        for(int i=1;i<frequency.length;i++){
            if(frequency[i]>max){
                max=frequency[i];
                maxValue=i;
            }
        }

        return maxValue;
    }
}

package Tool;

import java.util.Random;


public class RandomNum {
    //生成随机数
    public static int CreateRandNum(int begin,int end){
        Random random = new Random();
        return random.nextInt(end-begin)+begin;
    }
}

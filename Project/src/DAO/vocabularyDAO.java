package DAO;

import Entity.vocabulary;

public interface vocabularyDAO {
    //从数据库获取单词的接口
    public vocabulary getVocabulary(int Frequency) throws Exception;
}

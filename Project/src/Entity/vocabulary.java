package Entity;

//封装数据库中单词数据
public class vocabulary {
    private String Words;
    private Integer Frequency;
    private boolean Statue;
    private int level;

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public boolean getStatue() {
        return Statue;
    }

    public void setStatue(boolean statue) {
        Statue = statue;
    }

    public String getWords() {
        return Words;
    }

    public void setWords(String words) {
        Words = words;
    }

    public Integer getFrequency() {
        return Frequency;
    }

    public void setFrequency(Integer frequency) {
        Frequency = frequency;
    }

}

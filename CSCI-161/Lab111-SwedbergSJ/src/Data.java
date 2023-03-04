import java.util.Random;

/**
 * @author Samuel Swedberg
 * @version 12/8/22
 * 
 * A class that contains information about Data
 */
public class Data {
    private int num;
    /*
    @param id
    */
    
    Data()
    {
        this.num = genNum();
    }
    
    private int genNum()
    {
        int max = Integer.MAX_VALUE;
        Random rand = new Random();
        int r1 = rand.nextInt(max - 0);
        int r2 = rand.nextInt(max - 0);
        int r = r2 - r1;
        return r;
    }
    
    public void setNum(int num) { this.num = num; }
    
    public int getNum() { return num; }
}

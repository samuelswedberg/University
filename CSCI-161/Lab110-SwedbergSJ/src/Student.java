import java.util.Random;

/**
 *
 * @author Samuel Swedberg
 * @version 11/30/22
 * 
 * A class that holds information relevant to a student
 */
public class Student {
    
    private int id;
    private String lname = "", fname = "", standing = "";
    private double gpa;
    /*
    @param id
    @param lname
    @param fname
    @param standing
    @param gpa
    */
    
    Student()
    {
        this.id = setId();
        this.lname = setLname();
        this.fname = setFname();
        this.standing = standing();
        this.gpa = gpa();
    }
    
    
    public int setId()
    {
        Random rand = new Random();
        int randInt = rand.nextInt(10000000);
        return randInt;
        
    }
    
    public int getId() { return id; }
    
    public String setFname()
    {
        Random rand = new Random();
        
        int randInt1 = rand.nextInt(5);
        int totalNum = 10 - randInt1; 
        String fName = "";
        for(int i=0;i<totalNum; i++)
        {
            int randInt2 = rand.nextInt(26);
            char ch = (char)(randInt2 + 'a');
            if(i==0)
            {
                char ch1 = Character.toUpperCase(ch);
                fName += ch1;
            }
            else
            {
                fName += ch;
            }
        }
        
        return fName;
    }
    
    public String getLname() { return lname; }
    
    public String setLname()
    {
        Random rand = new Random();
        
        String[] lnames = {"Smith", "Johnson", "Willaims", "Brown", "Jones", "Miller", "Davis", "Garcia", "Rodriguez", "Wilson"};
        
        int randInt = rand.nextInt(10);
        
        for(int i=0; i<lnames.length; i++)
        {
            if(randInt == i)
            {
                return lnames[i];
            }
        }
        return null;
    }
    
    public String getFname() { return fname; }
    
    public String standing()
    {        
        Random rand = new Random();
        int randInt = rand.nextInt(100);
        
        if(randInt < 10)
            return "Senior";
        if(10 <= randInt && randInt < 30)
            return "Junior";
        if(30 <= randInt && randInt < 60)
            return "Sophmore";
        if(60 <= randInt)
            return "Freshman";
        
        return null;
    }
    
    public String getStanding() { return standing; }
    
    public double gpa()
    {
        Random rand = new Random();
        int randInt = rand.nextInt(100);
        
        if(randInt < 5) // 0-.9
        {
            double max = 0.99;
            double min = 0;
            double randD = min + Math.random() * (max-min);
            return randD;
        }
            
        if(5 <= randInt && randInt < 25) // 1-1.9
        {
            double max = 1.99;
            double min = 1;
            double randD = min + Math.random() * (max-min);
            return randD;
        }
        if(25 <= randInt && randInt < 75) // 2-2.9
        {
            double max = 2.99;
            double min = 2;
            double randD = min + Math.random() * (max-min);
            return randD;
        }
        if(75 <= randInt && randInt < 95) // 3-3.9
        {
            double max = 3.99;
            double min = 3;
            double randD = min + Math.random() * (max-min);
            return randD;
        }
        if(90 <= randInt) // 4
            return 4.00;
        
        return 0;
    }
    
    public double getGpa() { return gpa; }
    
    public String toString( )
    {
        return id + ":" + fname + ":" + lname + ":" + standing + ":" + gpa;
    }
}

/**
 *
 * @author Samuel Swedberg
 * @version 11/30/22
 * 
 * Comparator for first name
 */
public class fNameComparator implements Comparator<Student> {

    public int compare(Student a, Student b) 
    {
        if ( a == null || b == null )  
        {
            throw new NullPointerException("Type cannot be null");
        }
        
        int returnValue = 0;
        
        String aFname = a.getFname();
        String bFname = b.getFname();
        
        return bFname.compareTo(aFname);
    }
    
}

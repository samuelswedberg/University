/**
 *
 * @author Samuel Swedberg
 * @version 11/30/22
 * 
 * Comparator for last name
 */
public class lNameComparator implements Comparator<Student> {

    public int compare(Student a, Student b) 
    {
        if ( a == null || b == null )  
        {
            throw new NullPointerException("Type cannot be null");
        }
        
        int returnValue = 0;
        
        String aLname = a.getLname();
        String bLname = b.getLname();
        
        return bLname.compareTo(aLname);
    }
    
}

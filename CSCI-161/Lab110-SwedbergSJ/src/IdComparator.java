/**
 *
 * @author Samuel Swedberg
 * @version 11/30/22
 * 
 * Comparator for ID
 */
public class IdComparator implements Comparator<Student> {

    public int compare(Student a, Student b) 
    {
        if ( a == null || b == null )  
        {
            throw new NullPointerException("Type cannot be null");
        }
        
        int aId = a.getId();
        int bId = b.getId();
        
        return Double.compare(aId, bId);
    }
    
}

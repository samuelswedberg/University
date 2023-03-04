/**
 *
 * @author Samuel Swedberg
 * @version 11/30/22
 * 
 * Comparator for GPA
 */
public class GpaComparator implements Comparator<Student> {

    public int compare(Student a, Student b) 
    {
        if ( a == null || b == null )  
        {
            throw new NullPointerException("Type cannot be null");
        }
        
        double aGpa = a.getGpa();
        double bGpa = b.getGpa();
        
        return Double.compare(bGpa, aGpa);
    }
    
}

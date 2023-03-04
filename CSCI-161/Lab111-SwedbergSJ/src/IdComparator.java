/**
 *
 * @author Samuel Swedberg
 * @version 12/8/22
 * 
 * Comparator for ID
 */
public class IdComparator implements Comparator<Data> {

    public int compare(Data a, Data b) 
    {
        if ( a == null || b == null )  
        {
            throw new NullPointerException("Type cannot be null");
        }
        
        int aId = a.getNum();
        int bId = b.getNum();
        
        return Double.compare(aId, bId);
    }
    
}

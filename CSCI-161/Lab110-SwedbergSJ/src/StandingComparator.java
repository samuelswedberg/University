/**
 *
 * @author Samuel Swedberg
 * @version 11/30/22
 * 
 * Comparator for standing
 */
public class StandingComparator implements Comparator<Student> {

    public int compare(Student a, Student b) 
    {
        if ( a == null || b == null )  
        {
            throw new NullPointerException("Type cannot be null");
        }
        
        int returnValue = 0;
        
        String aStanding = a.getStanding();
        String bStanding = b.getStanding();
        
        switch ( aStanding )
        {
            case "Senior" : 
            {
                switch ( bStanding )
                {
                    case "Senior"   : returnValue = 0; break;                    
                    case "Junior" : returnValue = 1; break;
                    case "Sophmore" : returnValue = 1; break; 
                    case "Freshman" : returnValue = 1; break; 
                } 
                break;
            }
            case "Junior" :
            {
                switch ( bStanding )
                {
                    case "Senior"   : returnValue = -1; break;                    
                    case "Junior" : returnValue =  0; break;
                    case "Sophmore" : returnValue =  1; break;
                    case "Freshman" : returnValue = 1; break; 
                }
                break;
            }
            case "Sophmore" :
            {
                switch ( bStanding )
                {
                    case "Senior"   : returnValue = -1; break;                    
                    case "Junior" : returnValue = -1; break;
                    case "Sophmore" : returnValue =  0; break;
                    case "Freshman" : returnValue = 1; break; 
                }      
                break;
            }
            case "Freshman" :
            {
                switch ( bStanding )
                {
                    case "Senior"   : returnValue = -1; break;                    
                    case "Junior" : returnValue = -1; break;
                    case "Sophmore" : returnValue =  -1; break;
                    case "Freshman" : returnValue = 0; break; 
                }      
                break;
            }
            default :
            {
                //throw invalid medal exception
            }            
        }
        
        return returnValue;
    }
    
}

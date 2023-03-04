import java.util.Random;

/**
 *
 * @author Samuel Swedberg
 * @version 9/9/22
 * 
 * The Scores class holds information related to accessing and holding scores
 */

public class Scores {
    
    private int list[], count, freqCount, i;
    
    /**
     * @param list
     */
    private Scores() 
    { 
        list = new int[2];
    }
    
    /**
     * 
     * @param value 
     */
    public Scores( int value )
    {
        this.list = new int[value];
    }
    
    /**
     * 
     * @return count
     */
    public int size( ) { return count; }
    
    /**
     * 
     * @return true if empty, false otherwise
     */
    public boolean isEmpty( ) 
    {
        if(size() == 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
    /**
     * 
     * @param num 
     * @return count number of times num exists
     */
    public int getFrequencyOf( int num )
    {
        freqCount = 0;
        for( i=0; i<list.length; i++)
        {
            if( num == list[i] )
            {
                freqCount++;
            }
        }
        return freqCount;
    }
    
    /**
     * 
     * @param num
     * @return checks if list contains num
     */
    public boolean contains( int num )
    {
        boolean bool = false;

        for(i=0; i<list.length; i++)
        {
            if( list[i] == num )
            {
                 bool = true;
            }
        }
        
        return bool;
    }
    
    /**
     * 
     * @param num add num to list
     */
    public void add ( int num )
    {
        if( size() == list.length )
        {
            int temp[] = new int[list.length*2];
            
            for(i=0; i<list.length; i++)
            {
                temp[i] = list[i];
            }
            list = temp;
            temp = null;

            list[size()] = num;
            count++;
        }
        else
        {
            list[size()] = num;
            count++;
        }
        
    }
    
    /**
     * 
     * @param num
     * @return removes first occurence of num from list
     */
    public int remove ( int num )
    {   
        boolean firstOccurence = false;
        if( isEmpty() == false )
        {
            for(i=0; i<size()-1; i++)
            {
                if(num == list[i] && firstOccurence == false)
                {
                    firstOccurence = true;
                    for(int x=i; x<size(); x++)
                    {
                        list[x] = list[x+1];
                    }
                    list[list.length-1] = 0;
                    --count;
                }
                
            }   
            
            
        }
        return 0;
    }
    
    /**
     * 
     * @return removes random number from list, throws if list is empty
     */
    public int remove ( )
    {
        Random random = new Random();
        
        if ( isEmpty() == false )
        {
            int rand = random.nextInt(size());
            for( i=rand; i<size()-1; i++)
            {
                list[i] = list[i+1];
            }
            list[list.length-1] = 0;
            --count;
        }
        else
        {
            throw new IllegalStateException("IllegalStateException: The remove() method cannot be called on an empty list");
        }
        return 0;
    }
    
    /**
     * 
     * @param i
     * @return returns number in i index of list, throws if i is out of bounds
     */
    public int get( int i )
    {
        if ( i > list.length)
        {
            throw new ArrayIndexOutOfBoundsException("ArrayIndexOutOfBoundsException: index is outside the bounds of the array.");
        }
        return list[i];
    }
    
    /**
     * 
     * @return contents of instance
     */
    public String toString( ) { 
        
        for(i=0;i<list.length;i++)
        {
            System.out.println(i + ": " + list[i]);
        }
        return null;
    }
    
    /**
     * 
     * @param o
     * @return true if equal, false otherwise
     */
    public boolean equals( Object o )
    {
        if ( !( o instanceof Scores ) )
            return false;
        Scores s = ( Scores ) o;
        
        return super.equals( s )
                && list == s.list;
    }
}
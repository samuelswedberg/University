import java.util.Random;

/**
 *
 * @author Samuel Swedberg
 * @version 9/16/22
 * 
 * The ArrayBag class holds information related to accessing and holding information using and interfaces
 */

public class ArrayBag<E> implements Bag<E>{
    
    private int count;
    private E[] list;
    
    /**
     * Default constructor for ArrayBag
     */
    public ArrayBag() 
    { 
        list = ( E[] ) new Object[2];
    }
    
    /**
     * Overloaded constructor for ArrayBag
     * @param value 
     */
    public ArrayBag( int value )
    {
        list = ( E[] ) new Object[value];
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
     * @param e 
     * @return count number of times e exists
     */
    public int getFrequencyOf( E e )
    {
        int freqCount = 0;
        for( int i=0; i<list.length; i++)
        {
            if( e.equals(list[i]) )
            {
                freqCount++;
            }
        }
        return freqCount;
    }
    
    /**
     * 
     * @param e
     * @return checks if list contains e
     */
    public boolean contains( E e )
    {
        boolean bool = false;

        for(int i=0; i<list.length; i++)
        {
            if( list[i] == e )
            {
                 bool = true;
            }
        }
        
        return bool;
    }
    
    /**
     * 
     * @param e add e to list
     */
    public void add ( E e )
    {
        
        if( size() == list.length )
        {
            E[] temp = ( E[] ) new Object[list.length*2];
            
            for(int i=0; i<list.length; i++)
            {
                temp[i] = list[i];
            }
            list = temp;
            temp = null;

            list[size()] = e;
            count++;
        }
        else
        {
            list[size()] = e;
            count++;
        }
        
    }
    
    /**
     * 
     * @param e
     * @return removes first occurrence of e from list
     */
    public E remove ( E e )
    {
        boolean firstOccurence = false;
        if( isEmpty() == false )
        {
            for(int i=0; i<size(); i++)
            {
                if(e == list[i] && firstOccurence == false)
                {
                    firstOccurence = true;
                    for(int x=i; x<size()-1; x++)
                    {
                        list[x] = list[x+1];
                    }
                    list[list.length-1] = null;
                    --count;
                }
                
            }   
            
            
        }
        return null;
    }
    
    /**
     * 
     * @return removes random number from list, throws if list is empty
     */
    public E remove ( )
    {
        Random random = new Random();
        
        if ( isEmpty() == false )
        {
            int rand = random.nextInt(size());
            for( int i=rand; i<size()-1; i++)
            {
                list[i] = list[i+1];
            }
            list[list.length-1] = null;
            --count;
        }
        else
        {
            throw new IllegalStateException("IllegalStateException: The remove() method cannot be called on an empty list");
        }
        return null;
    }
    
    /**
     * 
     * @param i
     * @return returns number in i index of list, throws if i is out of bounds
     */
    public E get( int i )
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
        
        String s = "";
        for(int i=0; i<size(); i++)
        {
            s += " " + list[i];
        }
        
        return getClass().getName() + "@ size:" + size() + ", " + "list: " + s;
    }
    
    /**
     * 
     * @param o
     * @return true if equal, false otherwise
     */
    public boolean equals( Object o )
    {
        if ( !( o instanceof ArrayBag ) )
            return false;
        ArrayBag b = ( ArrayBag ) o;
        
        return super.equals( b )
                && list == b.list;
    }
}
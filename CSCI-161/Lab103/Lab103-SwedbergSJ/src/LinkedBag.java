import java.util.Random;

/**
 *
 * @author Samuel Swedberg
 * @version 9/16/22
 * 
 * The LinkedBag class holds information related to accessing and holding information using SinglyLinkedLists and interfaces
 */

public class LinkedBag<E> implements Bag<E> {
    SinglyLinkedList<E> bag;
    
    /**
     * Default constructor for LinkedBag
     */
    public LinkedBag() {
        bag = new SinglyLinkedList<>();
    }
    
    /**
     * Overloaded constructor for LinkedBag
     * @param capacity 
     */
    public LinkedBag(int capacity) {
        this();
    }
    
    /**
     * 
     * @return count
     */
    public int size( ) { return bag.size(); }
    
    /**
     * 
     * @return true if empty, false otherwise
     */
    public boolean isEmpty( ) { return bag.isEmpty(); }
    
    /**
     * 
     * @param e 
     * @return count number of times e exists
     */
    public int getFrequencyOf( E e )
    {
        int freqCount = 0;
        for(int i=0; i<bag.size(); i++)
        {
            E temp = bag.removeFirst();
            if(temp.equals(e))
            {
                freqCount++;
            }
            bag.addLast(temp);
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

        for(int i=0; i<bag.size(); i++)
        {
            if( bag.equals(e) )
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
    public void add ( E e ) { bag.addLast(e); }
    
    /**
     * 
     * @param num
     * @return removes first occurrence of num from list
     */
    public E remove ( E e )
    {   
        boolean firstOccurrence = false;
        if( !bag.isEmpty() )
        {
            for(int i=0; i<bag.size()+1; i++)
            {
                E temp = bag.removeFirst();
                if(temp.equals(e) && firstOccurrence == false)
                {
                    firstOccurrence = true;
                }
                else
                {
                    bag.addLast(temp);
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
        boolean firstOccurrence = false;
        if ( !bag.isEmpty() )
        {
            int rand = random.nextInt(bag.size());
            for(int i=0; i<bag.size()+1; i++)
            {
                E temp = bag.removeFirst();
                if(i == rand  && firstOccurrence == false)
                {
                    firstOccurrence = true;
                }
                else
                {
                    bag.addLast(temp);
                }
            }
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
        E getFound = null;
        if ( i > bag.size())
        {
            throw new ArrayIndexOutOfBoundsException("ArrayIndexOutOfBoundsException: index is outside the bounds of the array.");
        }
        else
        {
            for(int j=0; j<bag.size(); j++)
            {
                E temp = bag.removeFirst();
                if(j == i)
                {
                    getFound = temp;
                }
                bag.addLast(temp);
            }
        }
        return getFound;
    }
    
    /**
     * 
     * @return contents of instance
     */
    public String toString( ) {
        
        String s = "";
        for(int i=0; i<bag.size(); i++)
        {
            E temp = bag.removeFirst();
            s += " " + temp;
            bag.addLast(temp);
        }
        return getClass().getName() + "@ size:" + bag.size() + ", " + "list: " + s;
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
                && bag.size() == b.size();
    }
}

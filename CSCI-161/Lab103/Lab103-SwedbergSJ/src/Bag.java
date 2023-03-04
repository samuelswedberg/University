/**
 *
 * @author Samuel Swedberg
 * @version 9/16/22
 * @param <E>
 * 
 * The Bag interface holds methods to be access by other classes
 */
public interface Bag<E> {
    /**
     * 
     * @return count
     */
    public int size();

/**
     * 
     * @return true if empty, false otherwise
     */
    public boolean isEmpty();

    /**
     * 
     * @param e
     * @return count number of times e exists
     */
    public int getFrequencyOf(E e);

    /**
     * 
     * @param e
     * @return checks if list contains e
     */
    public boolean contains(E e);
    
    /**
     * add e to list
     * @param e
     */
    public void add(E e);
    
    /**
     * 
     * @param e
     * @return removes first occurrence of e from list
     */
    public E remove(E e);
    
    /**
     * 
     * @return removes random number from list, throws if list is empty
     */
    public E remove();
    
    /**
     * 
     * @param i
     * @return returns number in i index of list, throws if i is out of bounds
     */
    public E get(int i);
    
    /**
     * 
     * @return contents of instance
     */
    @Override
    public String toString();
 
    /**
     * 
     * @param o
     * @return true if equal, false otherwise
     */
    @Override
    public boolean equals(Object o);
}

/**
    * LinkedQueue Class
    * Code Fragments 6.11
    * from
    * Data Structures & Algorithms, 6th edition
    * by Michael T. Goodrich, Roberto Tamassia & Michael H. Goldwasser
    * Wiley 2014
    * Transcribed by
    * @author Samuel Swedberg
    * @version 10/14/22
*/
 /** Realization of a FIFO queue as an adaptation of a SinglyLinkedList. */
public class LinkedQueue<E> implements Queue<E> {
    private SinglyLinkedList<E> list = new SinglyLinkedList<>( );     // an empty list
    public LinkedQueue( ) { }            // new queue relies on the initially empty list
    public int size( ) { return list.size( ); }
    public boolean isEmpty( ) { return list.isEmpty( ); }
    public void enqueue(E element) { list.addLast(element); }
    public E first( ) { return list.first( ); }
    public E dequeue( ) { return list.removeFirst( ); }
}

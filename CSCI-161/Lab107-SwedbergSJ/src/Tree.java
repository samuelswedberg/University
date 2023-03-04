/**
    * Tree Class
    * Code Fragments from Chapter 8
    * from
    * Data Structures & Algorithms, 6th edition
    * by Michael T. Goodrich, Roberto Tamassia & Michael H. Goldwasser
    * Wiley 2014
    * Transcribed by
    * @author Samuel Swedberg
    * @version 10/25/22
*/

import java.util.Iterator;

/** An interface for a tree where nodes can have an arbitrary number of children. */
public interface Tree<E> extends Iterable<E> {
    Position<E> root( );
    Position<E> parent(Position<E> p) throws IllegalArgumentException;
    Iterable<Position<E>> children(Position<E> p)
                                      throws IllegalArgumentException;
    int numChildren(Position<E> p) throws IllegalArgumentException;
    boolean isInternal(Position<E> p) throws IllegalArgumentException;
    boolean isExternal(Position<E> p) throws IllegalArgumentException;
    boolean isRoot(Position<E> p) throws IllegalArgumentException;
    int size( );
    boolean isEmpty( );
    Iterator<E> iterator( );
    Iterable<Position<E>> positions( );
}
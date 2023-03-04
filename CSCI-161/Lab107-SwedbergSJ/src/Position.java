/**
    * Position Class
    * Code Fragments from Chapter 8
    * from
    * Data Structures & Algorithms, 6th edition
    * by Michael T. Goodrich, Roberto Tamassia & Michael H. Goldwasser
    * Wiley 2014
    * Transcribed by
    * @author Samuel Swedberg
    * @version 10/25/22
*/ 

public interface Position<E> {
    /**
     * Returns the element stored at this position.
     *
     * @return the stored element
     * @throws IllegalStateException if position no longer valid
     */
    E getElement( ) throws IllegalStateException;
}
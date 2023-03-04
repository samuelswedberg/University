import java.util.Arrays;

/**
 *
 * @author Samuel Swedberg
 * @version 11/30/22
 * 
 * A class that holds different sorting algorithms
 */
public class Sort {
    
    /**
     * 
     * @param <K>
     * @param data
     * @param comp 
     */
    public static <K> void simpleBubbleSort( K[] data, Comparator<K> comp )
    {
        for ( int i = 0; i < data.length; i++ )
        {
            for ( int j = 0; j < data.length - 1; j++ )
            {
                if ( comp.compare( data[j], data[j+1] ) <= 0 )
                {
                    K temp = data[j];
                    data[j] = data[j+1];
                    data[j+1] = temp;
                }
            }
        }
    }   
    
    /**
     * 
     * @param <K>
     * @param data
     * @param comp 
     */
    public static <K> void efficientBubbleSort( K[] data, Comparator<K> comp )
    {
        for (int i = 1; i < data.length; i++) 
        {
            boolean is_sorted = true;
            // skip the already sorted largest elements
            for (int j = 0; j < data.length - i; j++) 
            {
                if (comp.compare(data[j], data[j + 1]) > 0) 
                { //data[j] > data[j + 1]
                    K temp = data[j];
                    data[j] = data[j + 1];
                    data[j + 1] = temp;
                    is_sorted = false;
                }
            }
            if (is_sorted) return;
        }
    }  
    
    /**
     * 
     * @param <K>
     * @param S1
     * @param S2
     * @param S
     * @param comp 
     */
    public static <K> void merge(K[ ] S1, K[ ] S2, K[ ] S, Comparator<K> comp) {
        int i = 0, j = 0;
        while (i + j < S.length) {
        if (j == S2.length || (i < S1.length && comp.compare(S1[i], S2[j]) < 0))
           S[i+j] = S1[i++];               // copy ith element of S1 and increment i
        else
           S[i+j] = S2[j++];                // copy jth element of S2 and increment j
        }
    }
    
    /**
     * 
     * @param <K>
     * @param S
     * @param comp 
     */
    public static <K> void mergeSort(K[ ] S, Comparator<K> comp) {
        int n = S.length;
        if (n < 2) return;                              // array is trivially sorted
        // divide
        int mid = n/2;
        K[ ] S1 = Arrays.copyOfRange(S, 0, mid);         // copy of first half
        K[ ] S2 = Arrays.copyOfRange(S, mid, n);         // copy of second half
        // conquer (with recursion)
        mergeSort(S1, comp);                            // sort copy of first half
        mergeSort(S2, comp);                            // sort copy of second half
        // merge results
        merge(S1, S2, S, comp);              // merge sorted halves back into original
    }
    
    /**
     * 
     * @param <K>
     * @param S
     * @param comp1
     * @param comp2 
     */
    public static <K> void radixSort(K[ ] S, Comparator<K> comp1, Comparator<K> comp2)
    {
        Sort.mergeSort(S, comp1);
        Sort.mergeSort(S, comp2);
    }
    
    /** Performs a Selection Sort
     * on an integer array
     * @param the array to sort
     */
    public static <K> void selectionSort( K[] array, Comparator<K> comp )
    {
        K temp; // temporary location for swap
        int max; // index of maximum value in subarray
        
        for(int i=0; i<array.length; i++)
        {
            // find index of largest value in subarray
            max = indexOfLargestElement(array, array.length-1, comp);
            
            // swap array[max] and array[array.length-i-1]
            temp = array[max];
            array[max] = array[array.length-i-1];
            array[array.length-i-1] = temp;
        }
    }
    
    /** Finds index of largest element
     * @param size the size of the subarray
     * @return the index of the largest element in the subarray
     */
    private static <K> int indexOfLargestElement( K[] array, int size, Comparator<K> comp)
    {
        int index = 0;
        for(int i=1; i<size; i++)
        {
            if(comp.compare(array[i], array[index]) < 0) // if(array[i] > array[index])
                index = i;
        }
        return index;
    }
    
    /** Performs and Insertion Sort on an integer array
     * @param array   array to sort
     */
    public static <K> void insertionSort( K[] array, Comparator<K> comp )
    {
        int j;
        K temp;
        
        for(int i=1; i<array.length; i++)
        {
            j = i;
            temp = array[i];
            while(j != 0 && comp.compare(array[j-1], temp) > 0) // while(j != 0 && array[j-1] > temp)
            {
                array[j] = array[j-1];
                j--;
            }
            
            array[j] = temp;
        }
    }
    
    /**
     * 
     * @param <K>
     * @param S
     * @param comp 
     */
    public static <K> void quickSort(Queue<K> S, Comparator<K> comp) {
        int n = S.size( );
        if (n < 2) return;                      // queue is trivially sorted
        // divide
        K pivot = S.first( );                    // using first as arbitrary pivot
        Queue<K> L = new LinkedQueue<>( );
        Queue<K> E = new LinkedQueue<>( );
        Queue<K> G = new LinkedQueue<>( );
        while (!S.isEmpty( )) {                   // divide original into L, E, and G
            K element = S.dequeue( );
            int c = comp.compare(element, pivot);
            if (c < 0)                            // element is less than pivot
              L.enqueue(element);
            else if (c == 0)                      // element is equal to pivot
              E.enqueue(element);
            else                                  // element is greater than pivot
             G.enqueue(element);
        }
        // conquer
        quickSort(L, comp);                     // sort elements less than pivot
        quickSort(G, comp);                     // sort elements greater than pivot
        // concatenate results
        while (!L.isEmpty( ))
          S.enqueue(L.dequeue( ));
        while (!E.isEmpty( ))
          S.enqueue(E.dequeue( ));
        while (!G.isEmpty( ))
          S.enqueue(G.dequeue( ));
    }
}

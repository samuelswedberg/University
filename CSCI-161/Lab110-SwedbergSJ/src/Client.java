/**
 *
 * @author Samuel Swedberg
 * @version 11/30/22
 * 
 * A client that demonstrates sorting algorithms
 */
public class Client {
    public static void main(String[] args) {
        Student[] base1 = generateStudents(1000000);
        Student[] base2 = generateStudents(100000);
        
        Student[] mergeArr = base1.clone();
        Student[] quickArr = base1.clone();
        
        Student[] sBubArr = base2.clone();
        Student[] eBubArr = base2.clone();
        Student[] insArr = base2.clone();
        Student[] selArr = base2.clone();
        
        Comparator compId = new IdComparator();
        Comparator compfName = new fNameComparator();
        Comparator complName = new lNameComparator();
        Comparator compStanding = new StandingComparator();
        Comparator compGpa = new GpaComparator();
        
        long start, stop, elapse;
        
        LinkedQueue times = new LinkedQueue();
        
        start = System.currentTimeMillis(); // Starts timer
        Sort.mergeSort(mergeArr, compId); // Sorts on id using merge sort
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time

        times.enqueue(elapse);
        
        LinkedQueue queue = arrayToQueue(quickArr); // Converts array to queue
        
        start = System.currentTimeMillis(); // Starts timer
        Sort.quickSort(queue, compGpa); // Sorts on gpa using quick sort
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time

        times.enqueue(elapse);
        
        start = System.currentTimeMillis(); // Starts timer
        Sort.simpleBubbleSort(sBubArr, compId); // Sorts on gpa using quick sort
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time

        times.enqueue(elapse);
        
        start = System.currentTimeMillis(); // Starts timer
        Sort.efficientBubbleSort(eBubArr, compId); // Sorts on gpa using quick sort
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time

        times.enqueue(elapse);
        
        
        
        start = System.currentTimeMillis(); // Starts timer
        Sort.insertionSort(insArr, compGpa); // Sorts on gpa using insertion sort
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time
        
        times.enqueue(elapse);
        
        start = System.currentTimeMillis(); // Starts timer
        Sort.selectionSort(selArr, compStanding); // Sorts on standing using selection sort
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time
        
        times.enqueue(elapse);
        
        start = System.currentTimeMillis(); // Starts timer
        // Sorts on standing using selection sort 
        Sort.radixSort(selArr, compStanding, compStanding); // Standing standing
        Sort.radixSort(selArr, compStanding, compGpa);  // Standing by gpa
        Sort.radixSort(selArr, compGpa, complName);  // Standing by gpa
        Sort.radixSort(selArr, complName, compfName);  // Standing by gpa
        Sort.radixSort(selArr, compfName, compId);  // Standing by gpa
        
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time
        
        times.enqueue(elapse);
        
        printTable(times);
    }
    
    /**
     * @param arSize
     * @return 
     */
    public static Student[] generateStudents(int arSize)
    {
        Student[] array; 
        array = new Student[arSize];
        
        int size = 0;
        for(int i=0; i<arSize; i++)
        {
            boolean valid = false;
            if(size == 0)
            {
                Student student = new Student();
                array[i] = student;
                size++;
            }
            else
            {
                while(!valid)
                {
                    for(int j=0;j<size;j++)
                    {
                        Student student = new Student();
                        if(student.getId() != array[j].getId()) // Valid is true iff there is no duplicate... otherwise will rerun new student until no dupe
                        {
                            valid = true;
                        }
                        if(valid == true) // only runs if is valid
                        {
                            array[i] = student;
                            size++;
                            break;
                        }
                    }
                }
            }
        }
        return array;
    }
    
    /**
     * @param array
     * @return 
     */
    public static LinkedQueue arrayToQueue(Student[] array)
    {
        int trueSize = array.length;
        LinkedQueue queue = new LinkedQueue();
        for(int i=0; i<trueSize; i++)
        {
            queue.enqueue(array[i]);
        }
        
        return queue;
    }
    
    /**
     * @param data
     * @param size 
     */
    public static void printArray(Student[] data, int size)
    {
        for ( int i = 0; i < size; i++ )
            System.out.println( data[i] );
    }   
      
    /**
     * @param data
     * @param size 
     */
    public static void printQueue(LinkedQueue data, int size)
    {
        for ( int i = 0; i < size; i++ )
            System.out.println( data.dequeue() );
    }  
    
    /**
     * @param queue
     */
    public static void printTable(LinkedQueue queue)
    {
        ASCII table = new ASCII();
        
        table.getColumns().add(new ASCII.Column("Sort"));
        table.getColumns().add(new ASCII.Column("N"));
        table.getColumns().add(new ASCII.Column("Time (msec)"));
        


        String[] sorts = new String[] {"Merge", "Quick", "SimpleBubble", "EfficientBubble", "Insertion", "Selection", "Radix"};
        String[] n = new String[] {"1,000,000", "1,000,000", "100,000", "100,000", "100,000", "100,000", "1,000,000"};
        int trueSize = queue.size();
        for(int i=0; i<trueSize; i++)
        {
            ASCII.Row row = new ASCII.Row();
            
            long timeLong = ( long ) queue.dequeue();
            String time = Long.toString(timeLong);  
            
            
            table.getData().add(row);
            row.getValues().add(sorts[i]);
            row.getValues().add(n[i]);
            row.getValues().add(time);
        }
        table.calcWidth();
        table.printTable();
    }
}

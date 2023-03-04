/**
 *
 * @author Samuel Swedberg
 * @version 9/23/22
 * 
 * A Client that demonstrates timing tests for ArrayBag and LinkedBag data structures.
 */
public class Client {
    public static void main(String[] args) {
        int N = 1000000000;
        int count = 0;
        long start, stop, elapse;

        long[][] results = new long[9][3];
        
        // Fills Column 1
        for(int n=10; n<N; n*=10)
        {
            count++;
            results[count][0] = n;
        }
        
        // Test for ArrayBag
        count = 0; // Resets counter
        for(int n=10; n<N; n*=10)
        {   
            ArrayBag arrayBag = new ArrayBag<>();
            start = System.currentTimeMillis(); // Starts timer
            
            for(int i=0; i<n; i++)
            {
                arrayBag.addTest(i); // Adds test variable to array bag
                arrayBag.removeTest(); // Removes test variable to array bag
            }
            stop = System.currentTimeMillis(); // Ends timer
            
            elapse = stop - start; // Elasped time
            
            count++; // Increases count
            results[count][1] = elapse; // Adds elapsed time to matrix
            System.out.printf("Time to add and remove %d integrers for ArrayBag is %d (msec)\n", n, elapse);
        }

        // Test for LinkedBag
        count = 0; // Resets counter
        for(int n=10; n<N; n*=10)
        {
            LinkedBag linkedBag = new LinkedBag<>();
            start = System.currentTimeMillis(); // Starts timer
            
            for(int i=0; i<n; i++)
            {
                linkedBag.addTest(i); // Adds test variable to linked bag
                linkedBag.removeTest(); // Removes test variable to linked bag
            }
            stop = System.currentTimeMillis(); // Ends timer
            
            elapse = stop - start; // Elasped time
            
            count++; // Increases count
            results[count][2] = elapse; // Adds elapsed time to matrix
            System.out.printf("Time to add and remove %d integrers for LinkedBag is %d (msec)\n", n, elapse);
        }
        
        printTable(results); // printTable method to print the table. Uses the results matrix as a parameter.
    }
    
    public static void printTable(long results[][])
    {
        // Header for ascii table
        System.out.printf("+---------------+---------+----------+%n");
        System.out.printf("|       N       |  A-Bag  |   L-Bag  |%n");
        System.out.printf("+---------------+---------+----------+%n");
        
        // Prints out data for N, A-Bag, and L-Bag
        for(int i=1; i<results.length; i++)
        { 
                System.out.printf("| %,13d | %7d | %8d |%n", results[i][0], results[i][1], results[i][2]);
                System.out.printf("+---------------+---------+----------+%n");
        }
    }
}

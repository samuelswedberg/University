import java.util.Scanner;
import java.io.File;

/**
 *
 * @author Samuel Swedberg
 * @version 9/30/22
 * 
 * The Recursion class holds algorithms to be called by the Client.
 * 
 */
public class Recursion {
   Scanner sc = new Scanner(System.in);
    int count = 0;
    
   /**
    * Algorithm 1
    * @param n
    * @return 
    */
   public double algorithm1(int n)
   {
        if(n == 1.0)
            return 1.0;
        else
            return (1.0 / n) + algorithm1(n - 1); // Harmonic recursion
    }
   
   /**
    * Algorithm 2
    * @param n
    * @return 
    */
   public double algorithm2(int n)
   {
        if(n == 1.0)
            return 1.0;
        else
            return n + algorithm1(n-1); // Sum of positive integers recursion
   }
   
   /**
    * Algorithm 3
    * @param targetFileName
    * @param startPath 
    */
   public void findFile( String targetFileName, String startPath)
   {
       File file = new File(startPath);
       File[] files = file.listFiles();
       
       // Runs only if files exist
       if(files != null)
       {
           // For loop to run through all files
           for(int i=0; i<files.length; i++)
           {
               File f = files[i];
               // Checks if a directory or file
               if(f.isDirectory())
                   System.out.println(f);
                   findFile(targetFileName, f.getAbsolutePath()); // findFile recursion
               
               // Checks if targetFileName is the same as f.getName()
                if(f.getName().equals(targetFileName))
                {
                    count++; // Increments entries found
                    System.out.printf("Algorithm3( %s, %s ) = targetFileName: " + f.getName() + " in " + f.getAbsolutePath() + "\n", targetFileName, startPath);
                }
           }
       }
       return;
   }
}

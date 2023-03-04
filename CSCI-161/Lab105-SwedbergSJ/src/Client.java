import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;

/**
 *
 * @author Samuel Swedberg
 * @version 9/30/22
 * 
 * A client that demonstrates recursion algorithms.
 * 
 */

public class Client {
    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    
    boolean quit = false;
    
    // While loop for the Menu
    while (!quit) {
        System.out.println("==========  Menu  ==========");
        System.out.println(" A)  Algorithm 1 ");
        System.out.println(" B)  Algorithm 2 ");
        System.out.println(" C)  Algorithm 3 ");
        System.out.println(" Q)  Quit ");

        System.out.print("Enter choice: ");
        String choice = sc.nextLine();

        switch (choice) {
            case "A":
            case "a":
                callAlgorithm1();
                break;
            case "B":
            case "b":
                callAlgorithm2();
                break;
            case "C":
            case "c":
                callAlgorithm3();
                break;
            case "Q":
            case "q":
                quit = true;
                break;

            default:
                System.out.println("Invalid Choice, Try Again\n");
        }
    }
}
    /**
     * Calls Algorithm1 from Recursion class
     */
    public static void callAlgorithm1()
    {
        Recursion rc = new Recursion();
        Scanner sc = new Scanner(System.in);
        boolean tryAgain = true;
        int n = 0;
        String answer = "";
        
        // Loops until user wants to quit
        while(tryAgain)
        {   
            boolean inValidInput = true;
            // Loops until valid input is found
            while(inValidInput)
            {
                System.out.println("Algorithm1> Type in an integer greater than 0: ");
                answer = sc.nextLine();
                try 
                {
                    n = Integer.parseInt(answer);
                    if(n < 0)
                        throw new IllegalArgumentException("Algorithm1> Number must be greater than 0.");
                    
                    inValidInput = false;
                // NumberFormatException
                } catch ( NumberFormatException nfe ) {
                    System.out.println("Algorithm1> You must enter an integer value. Press a key to continue or N to leave: ");
                    answer = sc.nextLine();
                    // Asks user if they want to continue
                    if(answer.equalsIgnoreCase("N"))
                        tryAgain = false;
                        break;
                // IllegalArgumentException
                } catch (IllegalArgumentException iae) {
                    System.out.println(iae.getMessage() + " Press a key to continue or N to leave: ");
                    answer = sc.nextLine();
                    // Asks user if they want to continue
                    if(answer.equalsIgnoreCase("N"))
                        tryAgain = false;
                        break;
                }
            }
            
            // Runs only if valid input is found
            if(!inValidInput)
            {
                System.out.printf("Algorithm1( %d ) =  %,f \n ", n, rc.algorithm1(n));
                System.out.println("Press a key to continue or N to leave: ");
                answer = sc.nextLine();
                // Asks user if they want to continue
                if(answer.equalsIgnoreCase("N"))
                    tryAgain = false;
            }
        }
    }
    
    /**
     * Calls Algorithm2 from Recursion class
     */
    public static void callAlgorithm2()
    {
        Recursion rc = new Recursion();
        Scanner sc = new Scanner(System.in);
        boolean tryAgain = true;
        int n = 0;
        String answer = "";
        // Loops until user wants to quit
        while(tryAgain)
        {   
            boolean inValidInput = true;
            // Loops until valid input is found
            while(inValidInput)
            {
                System.out.println("Algorithm2> Type in an integer greater than 0: ");
                answer = sc.nextLine();
                try 
                {
                    n = Integer.parseInt(answer);
                    if(n < 0)
                        throw new IllegalArgumentException("Algorithm2> Number must be greater than 0.");
                    
                    inValidInput = false;
                // NumberFormatException
                } catch ( NumberFormatException nfe ) {
                    System.out.println("Algorithm2> You must enter an integer value. Press a key to continue or N to leave: ");
                    answer = sc.nextLine();
                    // Asks user if they want to continue
                    if(answer.equalsIgnoreCase("N"))
                        tryAgain = false;
                        break;
                // IllegalArgumentException
                } catch (IllegalArgumentException iae) {
                    System.out.println(iae.getMessage() + " Press a key to continue or N to leave: ");
                    answer = sc.nextLine();
                    // Asks user if they want to continue
                    if(answer.equalsIgnoreCase("N"))
                        tryAgain = false;
                        break;
                }
            }
            // Runs only if valid input is found
            if(!inValidInput)
            {
                System.out.printf("Algorithm2( %d ) =  %,f \n ", n, rc.algorithm2(n));
                System.out.println("Press a key to continue or N to leave: ");
                answer = sc.nextLine();
                // Asks user if they want to continue
                if(answer.equalsIgnoreCase("N"))
                    tryAgain = false;
            }
        }
    }
    
    /**
     * Calls Algorithm3 from Recursion class
     */
    public static void callAlgorithm3()
    {
        Recursion rc = new Recursion();
        Scanner sc = new Scanner(System.in);
        boolean tryAgain = true;
        int n = 0;
        String directory = "", filename = "", answer = "";
        
        // Loops until user wants to quit
        while(tryAgain)
        {   
            rc.count = 0;
            boolean inValidInput = true;
            //Loops until valid input is found
            while(inValidInput)
            {
                System.out.println("Algorithm3> Enter starting directory: ");
                directory = sc.nextLine();

                try {
                    if(!new File(directory).exists())
                        throw new FileNotFoundException("Algorithm3> You must only enter a directory.");
                    
                    inValidInput = false;
                    // FileNotFoundException
                    } catch (FileNotFoundException fnfe) {
                        System.out.println(fnfe.getMessage() + " Press a key to continue or N to leave: ");
                        answer = sc.nextLine();
                        // Asks user if they want to continue
                        if(answer.equalsIgnoreCase("N"))
                            tryAgain = false;
                            break;
                    }
            }

            // Runs only if valid input is found
            if(!inValidInput)
            {
                System.out.println("Algorithm3> Enter filename: ");
                filename = sc.nextLine();

                rc.findFile(filename, directory);
                System.out.printf("Algorithm3> Found %d entries\n", rc.count);
                System.out.println("Press a key to continue or N to leave: ");
                answer = sc.nextLine();
                // Asks user if they want to continue
                if(answer.equalsIgnoreCase("N"))
                    tryAgain = false;
            }
        }
    }
}

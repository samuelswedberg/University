import java.io.BufferedReader;
import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 * @author Samuel Swedberg
 * @version 10/14/22
 * 
 * A client that demonstrates reading text files and determine if they are either a line, word, or character palindrome.
 */

public class Client {
    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    String directory = "", answer = "";

    boolean tryAgain = true;
    while(tryAgain)
    {   
        boolean inValidInput = true;
        //Loops until valid input is found
        while(inValidInput)
        {
            System.out.println("Enter starting directory: ");
            directory = sc.nextLine();

            try {
                if(!new File(directory).exists())
                    throw new FileNotFoundException("You must only enter a directory.");

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
        LinkedQueue<String> txt = new LinkedQueue<>();
        LinkedQueue<String> returnLine = new LinkedQueue<>();
        LinkedQueue<String> returnWord = new LinkedQueue<>();
        LinkedQueue<String> returnChar = new LinkedQueue<>();
        
        // Runs only if valid input is found
        if(!inValidInput)
        {
            File file = new File(directory);
            File[] files = file.listFiles();

            LinkedQueue<String> queue = new LinkedQueue<>();

            // Runs only if files exist
            if(files != null)
            {
                LinkedQueue<String> lineQueue = new LinkedQueue<>();
                LinkedQueue<String> wordQueue = new LinkedQueue<>();
                LinkedQueue<String> charQueue = new LinkedQueue<>();
                
                // For loop to run through all files
                for(int i=0; i<files.length; i++)
                {
                    try
                    {
                        if(!new File(directory).exists())
                            throw new FileNotFoundException();

                        File f = files[i];
                        Scanner scanLine = new Scanner( f );
                        Scanner scanWord = new Scanner( f );
                        FileReader fr = new FileReader( f );
                        BufferedReader scanChar = new BufferedReader( fr );
                        
                        String txtName = f.getName();
                        txt.enqueue(txtName);

                        // Scans line
                        while( scanLine.hasNext() )
                        {
                            String stringLine = scanLine.nextLine();
                            lineQueue.enqueue(stringLine);

                        }
                        
                        // Scans words
                        while( scanWord.hasNext() )
                        {
                            String stringWord = scanWord.next();
                            wordQueue.enqueue(stringWord);
                            
                            // Cleans up for char check
                            stringWord = stringWord.replaceAll("\\p{P}", "");
                            stringWord = stringWord.replaceAll("\\s", "");
                            stringWord = stringWord.replaceAll("\\n", "");
                            stringWord = stringWord.replaceAll("\\t", "");
                            stringWord = stringWord.toLowerCase();
                            // Splits word into chars
                            if(!("end".equals(stringWord)))
                            {
                                String stringChar[] = stringWord.split("(?!^)");
                                for(String character : stringChar)
                                    charQueue.enqueue(character);
                            }
                        }
                        
                        
                        
                        returnLine.enqueue(isPalindrome(lineQueue)); // Line palindrome check
                        returnWord.enqueue(isPalindrome(wordQueue)); // Word palindrome check
                        returnChar.enqueue(isPalindrome(charQueue)); // Char palindrome check
                        
                        scanLine.close();
                    } catch ( FileNotFoundException fnfe )
                    {
                        System.out.println("Unable to find file.");
                    }
                    catch ( IOException ioe )
                    {
                        ioe.printStackTrace();
                    }
                }
            }

            
            printTable(txt, returnLine, returnWord, returnChar); // Prints ASCII Table
            System.out.println("Press a key to continue or N to leave: ");
            answer = sc.nextLine();
            // Asks user if they want to continue
            if(answer.equalsIgnoreCase("N"))
                tryAgain = false;
            }
        
        }
    }
    
    /*
    Checks if parameter is a palindrome or not
    */
    public static String isPalindrome(LinkedQueue queue)
    {   
        String returnStr = "";
        boolean isEqual = false;
        
        int trueCleanSize = queue.size();
        
        // Cleans up string
        for(int i=0; i<trueCleanSize; i++)
        {
            String stringRead = ( String ) queue.first();
            
            stringRead = stringRead.replaceAll("\\p{P}", "");
            stringRead = stringRead.replaceAll("\\s", "");
            stringRead = stringRead.replaceAll("\\n", "");
            stringRead = stringRead.replaceAll("\\t", "");
            stringRead = stringRead.toLowerCase();
            if("end".equals(stringRead))
            {
                queue.dequeue();
            }
            else if("".equals(stringRead))
            {
                queue.dequeue();
            }
            else
            {
                queue.dequeue();
                //System.out.println(stringRead); //! Remove final
                queue.enqueue(stringRead);
            }
        }
        
        // Holds strings to compare
        LinkedStack<String> stack1 = new LinkedStack<>();
        LinkedQueue<String> queue2 = new LinkedQueue<>();
        
        int trueQueueSize = queue.size();
        
        // Puts first half of parameter into stack
        for(int i=0; i<trueQueueSize/2; i++)
        {
            String temp = (String) queue.first();
            stack1.push(temp);
            queue.dequeue();
        }
        
        int trueAfter = queue.size();
        
        // Puts the remaining of parameter in queue
        while(!(queue.size() == 0))
        {
            String temp = (String) queue.first();
            queue2.enqueue(temp);
            queue.dequeue();
        }
        
        // Removes one if total is odd
        if((trueAfter % 2 == 0) == false)
        {
            queue2.dequeue();
        }
        
        int check = stack1.size() + queue2.size();
        
        // Checks if parameter is a palindrome
        for(int i=0; i<check/2; i++)
        {   
            if(stack1.top().equals(queue2.first()))
            {
                stack1.pop();
                queue2.dequeue();
                isEqual = true;
            }
            else
            {
                isEqual = false;
            }
        }

        // Returns Y
        if(isEqual == true)
        {
            returnStr = "Y";
            return returnStr;
        }
        // Returns N
        else
        {
            returnStr = "N";
            return returnStr;
        }
    }
    
    /*
    Prints out an ASCII table
    */
    public static void printTable( LinkedQueue txt, LinkedQueue character, LinkedQueue word, LinkedQueue line )
    {
        // Header for ascii table
        System.out.printf("+------------+-------------+--------+--------+\n");
        System.out.printf("|  Filename  |  Character  |  Word  |  Line  |\n");
        System.out.printf("+------------+-------------+--------+--------+\n");
        
        // Prints out data
        int trueSize = txt.size();
        for(int i=0; i<trueSize; i++)
        { 
                String returnTxt = ( String ) txt.first();
                String returnChar = ( String ) character.first();
                String returnWord = ( String ) word.first();
                String retirnLine = ( String ) line.first();
                
                System.out.printf("|   %s   |      %s      |    %s   |    %s   |\n", returnTxt, returnChar, returnWord, retirnLine);
                
                txt.dequeue();
                character.dequeue();
                word.dequeue();
                line.dequeue();
                System.out.printf("+------------+-------------+--------+--------+\n");
        }
    }
}

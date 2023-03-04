import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.InputMismatchException;
import java.util.NoSuchElementException;
import java.util.Scanner;

/**
 * @author Samuel Swedberg
 * @version 11/14/22
 * 
 * A client that demonstrates reading from a text file and printing ascii tables, and writing files
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
        // Runs only if valid input is found
        if(!inValidInput)
        {  
            findFile(directory);
            System.out.println("Press a key to continue or N to leave: ");
            answer = sc.nextLine();
            // Asks user if they want to continue
            if(answer.equalsIgnoreCase("N"))
                tryAgain = false;
        }
        
    }
    }
    
    /**
     * @param directory
     */
    public static void findFile(String directory)
    {
        File file = new File(directory);
        File[] files = file.listFiles();
        LinkedQueue queueTotal = new LinkedQueue();
        LinkedQueue queueTotalSuccess = new LinkedQueue();
        LinkedQueue queueTotalError = new LinkedQueue();
        
        // Runs only if files exist
        if(files != null)
        {   
            // For loop to run through all files
            for(int i=0; i<files.length; i++)
            {
                File f = files[i];
                // Checks if a directory or file
                if(f.isDirectory())
                    findFile(f.getAbsolutePath());
                try
                {
                    Scanner scanLine = new Scanner( f );

                    String fileNameArr = f.getName(); // Exchange Abbreviation
                    String[] split = fileNameArr.split("_", 2);
                    String fileName = split[0];
                    String absPath = f.getAbsolutePath();
                    long lastModLong = f.lastModified();
                    Date lastMod = new Date(lastModLong);
                    SimpleDateFormat df2 = new SimpleDateFormat("yyyymmdd");
                    String lastModText = df2.format(lastMod);
                    int skipFirstLine = 0;
                    // Scans line
                    while( scanLine.hasNext() )
                    {
                        if(skipFirstLine == 0)
                        {
                            skipFirstLine++;
                            scanLine.next();
                        }
                        else
                        {
                            LinkedQueue entryQueue = new LinkedQueue();
                            String stringLine = scanLine.nextLine();
                            Scanner parse = new Scanner(stringLine);
                            parse.useDelimiter(",");

                            try
                            {
                                NumberFormat nf = NumberFormat.getInstance();
                                nf.setMaximumFractionDigits(2);

                                entryQueue.enqueue(fileName); // Enqueues ex abb
                                String name, ticker;
                                name = parse.next();
                                entryQueue.enqueue(name); // Parses name as string and enqueues

                                ticker = parse.next();
                                entryQueue.enqueue(ticker); // Parses ticker as string and enqueues

                                int date, volume;
                                date = parse.nextInt();
                                entryQueue.enqueue(date); // Parses date as int

                                double open, high, low, close;
                                open = parse.nextDouble();

                                entryQueue.enqueue(nf.format(open)); // Parses open as double and enqueues

                                high = parse.nextDouble();

                                entryQueue.enqueue(nf.format(high)); // Parses high as double and enqueues

                                low = parse.nextDouble();
                                entryQueue.enqueue(nf.format(low)); // Parses low as double and enqueues

                                close = parse.nextDouble();
                                entryQueue.enqueue(nf.format(close)); // Parses close as double and enqueues

                                volume = parse.nextInt();
                                entryQueue.enqueue(volume); // Parses volume as int and enqueues

                                entryQueue.enqueue(lastModText);
                                entryQueue.enqueue(absPath);
                                queueTotal.enqueue(entryQueue);
                                String successString = fileName + ", " + name  + ", " + ticker + ", " + date + ", " + nf.format(open) + ", " + nf.format(high) + ", " + nf.format(low) + ", " + nf.format(close) + ", " + volume + ", " + lastModText + ", " + absPath;
                                queueTotalSuccess.enqueue(successString);
                                if(parse.hasNext())
                                {
                                    System.out.println("Too many records");
                                }
                            }
                            catch ( InputMismatchException ime )
                            {
                                System.out.println("Error in data format");
                                queueTotalError.enqueue(stringLine);
                            }
                            catch ( NoSuchElementException nse )
                            {
                                System.out.println("No more tokens");
                                queueTotalError.enqueue(stringLine);
                            }
                            catch ( IllegalStateException ise )
                            {
                                ise.printStackTrace();
                            }

                            parse.close();

                        }
                    }
                    scanLine.close();
                } 
                catch ( IOException ioe )
                {
                    ioe.printStackTrace();
                }
            }
        }
        printTable(queueTotal);
        writeFile(queueTotalSuccess, "A:\\EODdata.txt");
        writeFile(queueTotalError, "A:\\EODdataERROR.txt");
    }
    
    /**
     * @param queueTotal
     */
    public static void printTable(LinkedQueue queueTotal)
    {
        ASCII table = new ASCII();
        
        table.getColumns().add(new ASCII.Column("Exchange"));
        table.getColumns().add(new ASCII.Column("Name"));
        table.getColumns().add(new ASCII.Column("Ticker"));
        table.getColumns().add(new ASCII.Column("Date"));
        table.getColumns().add(new ASCII.Column("Open"));
        table.getColumns().add(new ASCII.Column("High"));
        table.getColumns().add(new ASCII.Column("Low"));
        table.getColumns().add(new ASCII.Column("Close"));
        table.getColumns().add(new ASCII.Column("Volume"));
        table.getColumns().add(new ASCII.Column("Last Modified"));
        table.getColumns().add(new ASCII.Column("Absolute Path"));
        
        String exAb, name, ticker, lastMod, absPath, open, high, low, close, date, volume;
        
        int trueSize = queueTotal.size();
        for(int i=0; i<trueSize; i++)
        {
            LinkedQueue queue = ( LinkedQueue ) queueTotal.dequeue();
            ASCII.Row row = new ASCII.Row();
            
            /*
            System.out.println("exAb: " + queue.dequeue());
            System.out.println("name: " + queue.dequeue());
            System.out.println("ticker: " + queue.dequeue());
            System.out.println("date: " + queue.dequeue());
            System.out.println("open: " + queue.dequeue());
            System.out.println("high: " + queue.dequeue());
            System.out.println("low: " + queue.dequeue());
            System.out.println("close: " + queue.dequeue());
            System.out.println("volume: " + queue.dequeue());
            System.out.println("lastMod: " + queue.dequeue());
            System.out.println("absPath: " + queue.dequeue());*/
            
            exAb = ( String ) queue.dequeue();
            name = ( String ) queue.dequeue();           
            ticker = ( String ) queue.dequeue();           
            int intDate = ( int ) queue.dequeue();
            date = Integer.toString(intDate);
            open = ( String ) queue.dequeue(); 
            high = ( String ) queue.dequeue(); 
            low = ( String ) queue.dequeue(); 
            close = ( String ) queue.dequeue(); 
            int intVolume = ( int ) queue.dequeue();
            volume = Integer.toString(intVolume);
            lastMod = ( String ) queue.dequeue();
            absPath = ( String ) queue.dequeue();
            
            table.getData().add(row);
            row.getValues().add(exAb);
            row.getValues().add(name);
            row.getValues().add(ticker);
            row.getValues().add(date);
            row.getValues().add(open);
            row.getValues().add(high);
            row.getValues().add(low);
            row.getValues().add(close);
            row.getValues().add(volume);
            row.getValues().add(lastMod);
            row.getValues().add(absPath);            
        }
        table.calcWidth();
        table.printTable();
    }
    
    /**
     * @param queue, file
     */
    public static void writeFile(LinkedQueue queue, String file)
    { 
        int trueSize = queue.size();
        try
        {
            FileWriter fileWriter = new FileWriter(file);
            BufferedWriter writer = new BufferedWriter(fileWriter);
            for(int i=0;i<trueSize;i++)
            {
                String s = ( String ) queue.dequeue();
                writer.write(s);
                writer.newLine();
            }
            
            writer.close();
        }
        catch( IOException ioe )
        {
            ioe.printStackTrace();
        }
    }
}


import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

/**
 * @author Samuel Swedberg
 * @version 12/8/22
 * 
 * A client class demonstrating merge sort on large files
 */
public class Client {
    public static void main(String[] args) {
        int size = 20000000;
        System.out.printf("Size of data set: %d\n", size);
        int blockTotal = 10;
        int blockSize = size / blockTotal;
        String path = "C:\\data\\data.txt";
        String splitPath = "C:\\data\\data";
        String sortedPath = "C:\\data\\sortedData.txt";
        long start, stop, elapse, startTot, stopTot, elapseTot;
        
        Data[] data = generateData(size);
        File file = new File("C:\\data");
        file.mkdir();
        
        startTot = System.currentTimeMillis(); // Starts total timer
        start = System.currentTimeMillis(); // Starts timer
        fileCreate(data, path);
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time
        
        System.out.printf("Time to write %d integers : %d msec\n", size, elapse);
        
        start = System.currentTimeMillis(); // Starts timer
        split(path, splitPath, blockSize); // Splits the 200,000,000 integers into 10 bloocks of 20,000,000 integers
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time
        
        System.out.printf("Time to split into 10 blocks : %d msec\n", elapse);
        
        start = System.currentTimeMillis(); // Starts timer
        sortBlocks(splitPath, blockTotal);
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time
        
        System.out.printf("Time to sort blocks: %d msec\n", elapse);
        
        start = System.currentTimeMillis(); // Starts timer
        mergeBlocks(splitPath, blockTotal, size, blockSize);
        stop = System.currentTimeMillis(); // Ends timer
        elapse = stop - start; // Elasped time
        
        System.out.printf("Time to merge blocks: %d msec\n", elapse);
        
        
        stopTot = System.currentTimeMillis(); // Ends total timer
        elapseTot = stopTot - startTot; // Elasped total time
        
        System.out.printf("Total external merge sort time: %d msec\n", elapseTot);
        
        System.out.printf("=====================================================\nisSorted checked %d items\n", size);
        System.out.println("Verify sort, isSorted = " + isSorted(sortedPath));
        
    }
    
    /**
     * @param arSize
     * @return 
     */
    public static Data[] generateData(int arSize)
    {
        Data[] array; 
        array = new Data[arSize];
        
        int size = 0;
        for(int i=0; i<arSize; i++)
        {
            Data data = new Data();
            array[i] = data;
            size++;
        }
        return array;
    }
    
    /**
     * @param data
     * @param path 
     */
    public static void fileCreate(Data[] data, String path)
    {
        try
        {
            FileWriter fileWriter = new FileWriter(path);
            BufferedWriter writer = new BufferedWriter(fileWriter);
            int trueSize = data.length;
            for(int i=0;i<trueSize;i++)
            {
                int r = data[i].getNum();
                String s = Integer.toString(r);
                writer.write(s);
                writer.newLine();
            }
            
            writer.close();
        } 
        catch (IOException ioe) 
        {
            ioe.printStackTrace();
        }
    }
    
    /**
     * @param path
     * @param blockTotal 
     */
    public static void sortBlocks(String path, int blockTotal)
    {
        Comparator compId = new IdComparator();
        int blockNum = 0;
        for(int i=0;i<blockTotal;i++)
        {
            try
            {
                LinkedQueue queue = new LinkedQueue();
                String truePath = path + blockNum + ".txt";
                File file = new File(truePath);
                Scanner scanLine = new Scanner(file);
                int z = 0;
                while(scanLine.hasNext())
                {
                    queue.enqueue(scanLine.nextLine());
                }
                int trueSizeQueue = queue.size();
                Data[] data = new Data[trueSizeQueue];
                for(int x=0;x<trueSizeQueue; x++)
                {
                    Data tempData = new Data();
                    String temp = ( String ) queue.dequeue();
                    int tempInt = Integer.parseInt(temp);
                    tempData.setNum(tempInt);
                    data[x] = tempData;
                }
                Sort.mergeSort(data, compId);
                int trueSize = data.length;
                FileWriter fileWriter = new FileWriter(truePath);
                BufferedWriter writer = new BufferedWriter(fileWriter);
                for(int j=0;j<trueSize; j++)
                {
                    int x = data[j].getNum();
                    String s = Integer.toString(x);
                    writer.write(s);
                    writer.newLine();
                }
                blockNum++;
                writer.close();
            }
            catch (IOException ioe) 
            {
                ioe.printStackTrace();
            }
        }
    }
    
    /**
     * @param path
     * @param blocks
     * @param size
     * @param blockSize 
     */
    public static void mergeBlocks(String path, int blocks, int size, int blockSize)
    {
        Data[] data = new Data[size];
        Data[] dataA = new Data[blockSize];
        Data[] dataB = new Data[blockSize];
        Comparator compId = new IdComparator();
        try
        {
            int x = 0;
            for(int i=0; i<blocks-1; i++)
            {
                String truePathA = path + i + ".txt";
                String truePathB = path + (i+1) + ".txt";
                File fileA = new File(truePathA);
                Scanner scanLineA = new Scanner(fileA);
                File fileB = new File(truePathB);
                Scanner scanLineB = new Scanner(fileB);
                
                if(i == 0)
                {
                    while(scanLineA.hasNext())
                    {
                    String s = scanLineA.nextLine();
                    Data temp = new Data();
                    dataA[x] = temp;
                    x++;
                    }
                }
                x = 0;
                while(scanLineB.hasNext())
                {
                    String s = scanLineB.nextLine();
                    Data temp = new Data();
                    dataB[x] = temp;
                    x++;
                }
                
                scanLineA.close();
                scanLineB.close();
                int mergeSize = dataA.length + dataB.length;
                Data[] dataT = new Data[mergeSize];
                int count1 = 0, count2 = 0;
                if(i == 0)
                {
                    for(int j=0; j<mergeSize; j++)
                    {
                        if(count1 < dataA.length)
                        {
                            dataT[j] = dataA[count1];
                            count1++;
                        }
                        else if(count2 < dataB.length)
                        {
                            dataT[j] = dataB[count2];
                            count2++;
                        }
                    }
                    Sort.mergeSort(dataT, compId); // Sorts on id using merge sort
                    dataA = dataT;
                }
                else
                {
                    for(int z=0; z<mergeSize; z++)
                    {
                        if(count1 < dataA.length)
                        {
                            dataT[z] = dataA[count1];
                            count1++;
                        }
                        else if(count2 < dataB.length)
                        {
                            dataT[z] = dataB[count2];
                            count2++;
                        }
                    }
                    Sort.mergeSort(dataT, compId); // Sorts on id using merge sort
                    dataA = dataT;
                }
                if(i == 8)
                {
                    fileCreate(dataT, "C:\\data\\sortedData.txt");
                }
            }
        } 
        catch (IOException ioe) 
        {
            ioe.printStackTrace();
        }        
    }
    
    /**
     * @param path
     * @param splitPath
     * @param blocks 
     */
    public static void split(String path, String splitPath, int blocks)
    {
        try
        {
            FileReader fileReader = new FileReader(path);
            BufferedReader reader = new BufferedReader(fileReader);
            
            String line = "";
            int lineCount = 0;
            int blockNum = 0;
            LinkedQueue lineQueue = new LinkedQueue();
            while((line = reader.readLine()) != null)
            {
                lineQueue.enqueue(line);
                lineCount++;
                if(lineCount >= blocks)
                {
                    int trueSize = lineQueue.size();
                    String truePath = splitPath + blockNum + ".txt";
                    FileWriter fileWriter = new FileWriter(truePath);
                    BufferedWriter writer = new BufferedWriter(fileWriter);
                    for(int i=0;i<trueSize; i++)
                    {
                        String s = ( String ) lineQueue.dequeue();                        
                        writer.write(s);
                        writer.newLine();
                    }
                    blockNum++;
                    lineCount = 0;
                    writer.close();
                }
            }
            reader.close();
            
        } 
        catch (IOException ioe) 
        {
            ioe.printStackTrace();
        }
    }
    
    /**
     * @param path
     * @return 
     */
    public static boolean isSorted(String path)
    {
        try
        {   
            File file = new File(path);
            Scanner scanLine = new Scanner(file);
            
            if(!scanLine.hasNext())
            {
                return true;
            }
            
            while(scanLine.hasNext())
            {
                String aS = scanLine.nextLine();
                String bS = scanLine.nextLine();

                int a = Integer.parseInt(aS);
                int b = Integer.parseInt(bS);
                if(a > b)
                {
                    return false;
                }
            }
            
            scanLine.close();
        } 
        catch (IOException ioe) 
        {
            ioe.printStackTrace();
        }
        
        return true;
    }
}

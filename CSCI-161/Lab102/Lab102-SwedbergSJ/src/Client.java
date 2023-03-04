import java.util.Random;

/**
 *
 * @author Samuel Swedberg
 * @version 9/9/22
 * 
 * A client that demonstrates calling methods from the Scores class
 */
public class Client {
    
    public static void main(String[] args) {
        
        Scores scores = new Scores(16); // Creates instance of scores
        
        Random random = new Random(); // Creates instance of Random using java.util.Random
 
        int i;
        for(i=0; i<31; i++) // Generates random value from -10 to 10 and adds to Scores
        {
            int value = (random.nextInt(21)-10);
            scores.add(value);
        }
      
        scores.toString(); // Prints contents of Scores
        
        scores.add(6); // Adds 6 to Scores
        
        System.out.println("scores.size() : " + scores.size()); // Prints size of Scores
        
        scores.remove(); // Removes a random number from Scores
        System.out.println("scores.size() after remove() : " + scores.size()); // Prints size of Scores
        scores.toString(); // Prints contents of Scores to compare from before
        
        int tempNumb = scores.get(15); // Stores the number from get(15) to be used in later
        System.out.println("scores.get(15) : " + tempNumb); // Gets number at 15th index position
        
       
        System.out.println("scores.getFrequencyOf(tempNumb) : " + scores.getFrequencyOf(tempNumb)); // Prints frequency of the tempNumb 
        
        
        scores.remove(scores.get(15)); // Removes first occurrence of the 15th index position
        System.out.println("scores.size() after remove(15) : " + scores.size()); // Prints size of Scores
        scores.toString(); // Prints contents of Scores to compare from before
        
        System.out.println("scores.getFrequencyOf(scores.get(tempNumb)) : " + scores.getFrequencyOf(tempNumb)); // Prints frequency of tempNumb after removing the first occurrence
     
        System.out.println("scores.contains(5) : " + scores.contains(5)); // Checks if Scores contains the number 5
    }
}

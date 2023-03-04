/**
 *
 * @author Samuel Swedberg
 * @version 9/16/22
 * 
 * A Client that demonstrates the use of arrays and SinglyLinkedLists
 */

public class Client {
    public static void main(String[] args) {
        ArrayBag<Player> mensTeam = new ArrayBag<>();
        
        // Creates instances of players
        Player player1 = new Player("Joe", "Quarterback", 2);
        Player player2 = new Player("Alex", "Runningback", 12);
        Player player3 = new Player("Justin", "Wide Receiver", 33);
        Player player4 = new Player("Hector", "Wide Receiver", 25);
        Player player5 = new Player("Eddy", "Full Back", 18);
        Player player6 = new Player("Dave", "Kicker", 99);
        Player player7 = new Player("Lance", "Waterboy", 80);
        Player player8 = new Player("Karson", "Safety", 56);
        
        // Adds instances to mensTeam
        mensTeam.add(player1);
        mensTeam.add(player2);
        mensTeam.add(player3);
        mensTeam.add(player4);
        mensTeam.add(player5);
        mensTeam.add(player6);
        mensTeam.add(player7);
        mensTeam.add(player8);
        
        System.out.println(mensTeam.toString()); // Prints contents of mensTeam
        
        mensTeam.remove(); // Removes a random element from mensTeam
        
        System.out.println(mensTeam.toString()); // Prints contents of mensTeam
        
        Player removeLaterMens = mensTeam.get(5); // Stores value from index 5 to remove later
        System.out.println("mensTeam.get(5): " + mensTeam.get(5)); // Prints what player was gotten
        
        Player player9 = new Player("Ethan", "Cornerback", 42); // Creates another instance of a player
        mensTeam.add(player9); // Adds player to mensTeam
        
        System.out.println(mensTeam.toString()); // Prints contents of mensTeam
        
        mensTeam.remove(removeLaterMens); // Removes player gotten earlier
        
        System.out.println(mensTeam.toString()); // Prints contents of mensTeam
        
        ArrayBag<String> courses = new ArrayBag<>(); // Creates new ArrayBag named courses
        
        // Creates instances of courses for courses ArrayBag
        String course1 = new String("CSCI 161");
        String course2 = new String("EE 206");
        String course3 = new String("MATH 129");
        String course4 = new String("MATH 265");
        
        // Adds course to courses
        courses.add(course1);
        courses.add(course2);
        courses.add(course3);
        courses.add(course4);
        
        System.out.println(courses.toString()); // Prints contents of courses
        
        courses.remove(); // Removes random course
        
        System.out.println(courses.toString()); // Prints contents of courses
        
        LinkedBag<Player> womensTeam = new LinkedBag<>(); // Creates new LinkedBag named womensTeam
        
        // Creates instances of players
        Player player11 = new Player("Kris", "Shooting Guard", 2);
        Player player12 = new Player("Grace", "Point Guard", 12);
        Player player13 = new Player("Elise", "Small Forward", 33);
        Player player14 = new Player("Stella", "Power Forward", 25);
        Player player15 = new Player("Jean", "Center", 18);
        Player player16 = new Player("Ashley", "Shooting Guard", 99);
        Player player17 = new Player("Skye", "Center", 80);
        Player player18 = new Player("Natalie", "Point Guard", 56);
        
        // Adds players to womensTeam
        womensTeam.add(player11);
        womensTeam.add(player12);
        womensTeam.add(player13);
        womensTeam.add(player14);
        womensTeam.add(player15);
        womensTeam.add(player16);
        womensTeam.add(player17);
        womensTeam.add(player18);
        
        System.out.println(womensTeam.toString()); // Prints content of womensTeam
        
        womensTeam.remove(); // Removes random node from womensTeam
        
        System.out.println(womensTeam.toString()); // Prints content of womensTeam
        
        Player removeLaterWomens = womensTeam.get(5); // Stores value from 5th node of womensTeam
        System.out.println("womensTeam.get(5): " + womensTeam.get(5)); // Prints the value from 5th node
        
        Player player19 = new Player("Jill", "Power Forward", 42); // Creates another player
        
        womensTeam.add(player19); // Adds player to womensTeam
        
        System.out.println(womensTeam.toString()); // Prints content of womensTeam
        
        womensTeam.remove(removeLaterWomens); // Removes node saved from earlier
        
        System.out.println(womensTeam.toString()); // Prints content of womensTeam
    }
}

/**
 *
 * @author Samuel Swedberg
 * @version 9/16/22
 * 
 * The Player class holds information related to a player
 */

public class Player {
    String name, positionPlayed;
    int jerseyNumber;
    
    /**
     * Constructor for the PLayer class
     * @param name
     * @param positionPlayed
     * @param jerseyNumber
     */
    public Player(String name, String positionPlayed, int jerseyNumber) {
        this.name = name;
        this.positionPlayed = positionPlayed;
        this.jerseyNumber = jerseyNumber;
    }
    /**
     * 
     * @param name
     * @return updates name instance variables
     */
    public String setName( String name ) { return this.name = name; }
    
    /**
     * 
     * @return name
     */
    public String getName() { return name; }
       
    /**
     * 
     * @param positionPlayed
     * @return updates positionPlayed instance variables 
     */
    public String setPositionPlayed( String positionPlayed ) { return this.positionPlayed = positionPlayed; }
    
    /**
     * 
     * @return positionPlayed
     */
    public String getPositionPlayed() { return positionPlayed; }
    
    /**
     * 
     * @param jerseyNumber
     * @return updates jerseyNumber instance variable
     */
    public int setJerseyNumber( int jerseyNumber ) { return this.jerseyNumber = jerseyNumber; }
    
    /**
     * 
     * @return jerseyNumber
     */
    public int getJerseyNumber() { return jerseyNumber; }
    
    /**
     * 
     * @return contents of Player instance
     */
    public String toString(){
        return getClass().getName() + "@" + name + ":" + positionPlayed + ":" + jerseyNumber;
    }
    
    /**
     * 
     * @param o  object to be compared
     * @return  true if objects equal
     */
    public boolean equals( Object o )
    {
        if ( !( o instanceof Player ) )
            return false;
        Player p = ( Player ) o;
        
        return name.equals( p.name )
                && positionPlayed.equals( p.positionPlayed )
                && jerseyNumber == p.jerseyNumber;
    }
}

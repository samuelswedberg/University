/**
 *
 * @author Samuel Swedberg
 * @version 9/2/2022
 * 
 * The Hourly class contains information related to an hourly worker
 */

public class Hourly extends Employee {
    
    private String position;
    private double hourly;
    
    /**
     * 
     * @param id
     * @param name
     * @param position
     * @param hourly 
     */
    public Hourly( int id, String name, String position, double hourly )
    {
        super( id, name );
        this.position = position;
        this.hourly = hourly;
    }
    
    /**
     * 
     * @return position
     */
    public String getPosition( ) { return position; }
    
    /**
     * 
     * @param position updates position
     */
    public void setPosition( String position ) { this.position = position; }
    
    /**
     * 
     * @return hourly
     */
    public double getHourlyRate( ) { return hourly; }
    
    /**
     * 
     * @param hourly updates hourly
     */
    public void setHourlyRate( double hourly ) { this.hourly = hourly; }
    
    /**
     * 
     * @return contents of instance
     */
    public String toString()
    {
        return super.toString() + ":" + getClass().getName() + "@" + position + ":" + hourly;
    }
    
    /**
     * 
     * @param o
     * @return true if equal, false otherwise
     */
    public boolean equals( Object o )
    {
        if ( !( o instanceof Hourly ) )
            return false;
        
        Hourly h = ( Hourly ) o;
        
        return super.equals( h )
                && position.equals( h.position )
                && hourly == h.hourly;
    }    
}
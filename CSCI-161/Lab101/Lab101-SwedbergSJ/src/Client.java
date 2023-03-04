/**
 * 
 * @author Samuel Swedberg
 * @version 9/2/2022
 * 
 * A client that demonstrates polymorphism.
 * 
 */
public class Client {
    
    public static void main(String[] args) {
        
        // Creates an array to hold hourly and salaried employees
        Employee[] employeeList = new Employee[10];
        
        
        // Create an instance of Salaried and Hourly employee
        Salaried salaried1 = new Salaried(0, "Al", "Manager", 60000);
        Hourly hourly1 = new Hourly(1, "Kelly", "Hostess", 25.75);
        Salaried salaried2 = new Salaried(2, "Peggy", "CEO", 120000);
        Hourly hourly2 = new Hourly(3, "Bud", "Busboy", 15.00);
        Hourly hourly3 = new Hourly(4, "Marcy", "Server", 10.00);
        Hourly hourly4 = new Hourly(5, "Jefferson", "Cook", 35.00);
        
        // Connects instance to employeeList array
        employeeList[0] = salaried1;
        employeeList[1] = hourly1;
        employeeList[2] = salaried2;
        employeeList[3] = hourly2;
        employeeList[4] = hourly3;
        employeeList[5] = hourly4;
        
        // Prints employeeList array
        for(int i=0; i<employeeList.length; i++)
        {
            if(employeeList[i]==null){ System.out.println("null");} // Prints "null" if there is no entry
            else { System.out.println("Employee" + i + " " + employeeList[i].toString()); }
        }
        
        int i;
        // Gives employees 25% raise
        for(i=0; i<employeeList.length; i++)
        {
           if(employeeList[i] instanceof Salaried) // 25% raise for Salaried workers
           {
               Salaried salary = ( Salaried ) employeeList[i];
               salary.setSalary((int)(salary.getSalary()*1.25));
           }
           else if(employeeList[i] instanceof Hourly) // 25% raise for Hourly workers
           {
               Hourly rate = ( Hourly ) employeeList[i];
               rate.setHourlyRate(rate.getHourlyRate()*1.25);
           }    
        } 
        
        // Prints employeeList array after 25% raise
        for(i=0; i<employeeList.length; i++)
        {
            if(employeeList[i]==null){ continue; } // Skips null entries
            else { System.out.println("Employee" + i + " rasied to " + employeeList[i].toString()); }
        }
        
        Salaried empSalaried = ( Salaried ) employeeList[0];
        // Salaried equals() returns true
        System.out.println("Is empSalaried == to employee 0?: " + empSalaried.equals(employeeList[0]));
        // Salaried equals() returns false
        System.out.println("Is empSalaried == to employee 1?: " + empSalaried.equals(employeeList[1]));
        
        Hourly empHourly = ( Hourly ) employeeList[1];
        // Hourly equals() returns false
        System.out.println("Is empHourly == to employee 0?: " + empHourly.equals(employeeList[0]));
        // Hourly equals() returns true
        System.out.println("Is empHourly == to employee 0?: " + empHourly.equals(employeeList[1]));
    }
}            
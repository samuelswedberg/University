import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Scanner;

/**
 * @author Samuel Swedberg
 * @version 11/4/22
 * 
 * A client that demonstrates a shunting yard algorithm with arithmetic expressions.
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
            System.out.println("Enter starting entire directory with filename: ");
            directory = sc.nextLine();

            try {
                if(!new File(directory).exists())
                    throw new FileNotFoundException("Error: FileNotFoundException.");

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
            File file = new File(directory);
            
            LinkedQueue lineQueue = new LinkedQueue();
            LinkedQueue charQueue = new LinkedQueue();
            
            try
            {
                if(!new File(directory).exists())
                    throw new FileNotFoundException();

                Scanner scanLine = new Scanner( file );

                /*
                // Scans line
                while( scanLine.hasNext() )
                {
                    String stringLine = scanLine.nextLine();
                    lineQueue.enqueue(stringLine);
                    System.out.println(stringLine);
                    
                }*/
                
                while( scanLine.hasNext() )
                {
                    String stringWord = scanLine.nextLine();
                    lineQueue.enqueue(stringWord);
                    System.out.println("Infix Expression: " + stringWord);
                    // Splits word into chars
                    String stringChar[] = stringWord.split(" ");
                    for(String character : stringChar)
                    {
                        charQueue.enqueue(character);
                    }
                    postFixEvaluate(charQueue);
                }

                scanLine.close();
            } catch ( FileNotFoundException fnfe )
            {
                System.out.println("Unable to find file.");
            }
            catch ( IOException ioe )
            {
                ioe.printStackTrace();
            }
            // start

            
            
            // end 
            System.out.println("Press a key to continue or N to leave: ");
            answer = sc.nextLine();
            // Asks user if they want to continue
            if(answer.equalsIgnoreCase("N"))
                tryAgain = false;
            }
        }
    }
    
    /*
        postFixEvaluate method
        @param queue
        @return void
    */
    public static void postFixEvaluate(LinkedQueue queue)
    {
        boolean inValidExpression = false;
        // Shunting yard data structures
        LinkedQueue rQ = queue; // Right Queue
        LinkedQueue lQ = new LinkedQueue(); // Left Queue
        LinkedStack bS = new LinkedStack(); // Bottom Stack

        // This for loop removes parenthesis and will move all values to the lQ
        int size1 = rQ.size();
        for(int i=0; i<size1; i++) // Runs through rQ
        {
            //System.out.println("Loop: " + i);
            if(isOperator(rQ.first())) // Is an operator
            {
                //System.out.println("Is Operator");
                if(isParRight(rQ.first())) // Checks if rQ is )
                {
                    //System.out.println("Is )");
                    int bsSize = bS.size();
                    for(int j=0; j<bsSize; j++) // Runs through bS
                    {
                        //System.out.println(") Loop: " + j);
                        if(isParLeft(bS.top())) // Checks if top of stack is (
                        {
                            //System.out.println(" Is (");
                            //System.out.println("Popped: " + bS.top());
                            bS.pop(); // Pops (
                            break; // Breaks out of for loop (this only needs to find the first left parentheses)
                        }
                        else
                        {
                            //System.out.println("Pushing: " + bS.top());
                            lQ.enqueue(bS.pop()); // Pops top of stack to lQ
                        }
                        if(bS.isEmpty())
                        {
                            inValidExpression = true;
                            break;
                        }
                    }
                    rQ.dequeue(); // Removes )
                }
                else
                {
                    //System.out.println("Pushing: " + rQ.first());
                    bS.push(rQ.dequeue());
                }
            }
            else
            {
                //System.out.println("Enqueueing lQ: " + rQ.first());
                lQ.enqueue(rQ.dequeue()); // Enqueues if a number
            }
            if(rQ.isEmpty()) // If rQ is empty then moves all of the remaining bS to lQ
            {
                while(!(bS.isEmpty())) // Runs until bS is empty
                {
                    lQ.enqueue(bS.pop()); // Pops bS to lQ
                }
            }
        }
        
        rQ = lQ; // Moves lQ to rQ;
        lQ = null; // Deletes lQ;
        LinkedQueue copyRq = new LinkedQueue();
        int copySize = rQ.size();
        for(int c=0; c<copySize; c++)
        {
            Object temp = rQ.dequeue();
            copyRq.enqueue(temp);
            rQ.enqueue(temp);
        }
        
        String printPostFix = "";
        for (int x=0; x<rQ.size(); x++) 
        {
            String temp = ( String ) rQ.dequeue();
            printPostFix += temp + "";
            rQ.enqueue(temp);
        }
        System.out.println("Postfix Expression: " + printPostFix);

        int size2 = rQ.size();
        // This for loop will evaluate
        for(int k=0; k<size2; k++)
        {
            if(!(inValidExpression))
            {
                if(!(rQ.isEmpty()))
                {
                    if(isOperator(rQ.first())) // Checks if is an operator
                    {
                        //System.out.println("Is Operator");

                        if(bS.top() == null)
                        {
                            inValidExpression = true;
                            break;
                        }
                        //System.out.println("lV: " + bS.top());
                        String s1 = String.valueOf(bS.pop());
                        double rV = Double.parseDouble(s1); // Converts object to double

                        if(bS.top() == null)
                        {
                            inValidExpression = true;
                            break;
                        }
                        //System.out.println("rV: " + bS.top());
                        String s2 = String.valueOf(bS.pop());
                        double lV = Double.parseDouble(s2); // Converts object to double
                        if(rV == 0)
                        {
                            inValidExpression = true;
                            break;
                        }
                        else if(rQ.first().equals("(")|| rQ.first().equals(")"))
                        {
                            inValidExpression = true;
                            break;
                        }
                        else
                        {
                            bS.push(doMath(lV, rV, rQ.first())); // Does calculation and pushes back down into bS
                            //System.out.println("doMath: " + doMath(lV, rV, rQ.first()));
                            rQ.dequeue(); // Removes operator
                        }

                    }
                    else
                    {
                        //System.out.println("Pushing: " + rQ.first());
                        bS.push(rQ.dequeue()); // Pushes number from rQ
                    }
                }
            }
        }
        if(inValidExpression)
        {
            System.out.println("Invalid expression.");
        }
        else
        {
            System.out.println("Valid expression.");
            System.out.println("Expression evaluation: " + bS.top()); // Prints final value 
            postFixToTree(copyRq); // Converts postfix expression to a tree
        }
        
        Scanner sc = new Scanner(System.in);
        System.out.println("Press a key to continue");
            String rando  = sc.nextLine();
    }
    
    /*
        postFixToTree method
        @param queue
        @return void
    */
    public static void postFixToTree(LinkedQueue queue)
    {   
        LinkedBinaryTree treeFinal = new LinkedBinaryTree();
        LinkedStack stackTree = new LinkedStack();
        
        while(!(queue.isEmpty()))
        {
            //System.out.println("Queue Size: " + queue.size());
            if(!(isOperator(queue.first()))) // Creates one node tree and pushes to expression stack
            {
                //System.out.println("Is Operand: " + queue.first());
                LinkedBinaryTree tree = new LinkedBinaryTree();
                tree.addRoot(queue.dequeue());
                stackTree.push(tree);
            }
            else // Creates new tree with operator as root, and pops tree off expression stack for left and right children. Pushes new tree onto stack
            {
                //System.out.println("Is Operator: " + queue.first());
                LinkedBinaryTree tree = new LinkedBinaryTree();
                tree.addRoot(queue.dequeue());
                LinkedBinaryTree lC = (LinkedBinaryTree) stackTree.pop();
                LinkedBinaryTree rC = (LinkedBinaryTree) stackTree.pop();
                tree.attach(tree.root(), lC, rC);
                stackTree.push(tree);
            }
        }
        treeFinal = (LinkedBinaryTree) stackTree.top();
        System.out.println("Preorder: " + preOrder(treeFinal)); // Prints preorder traversal
        System.out.println("Inorder: " + inOrder(treeFinal)); // Prints inorder traversal 
        System.out.println("Postorder: " + postOrder(treeFinal)); // Prints postorder traversal 
        System.out.println("Breadthfirst: " + breadthFirst(treeFinal)); // Prints breadthfirst

        System.out.print("Eulertour: "); // Prints eulertour
        eulerTour(treeFinal, treeFinal.root());
        System.out.print("\n");
        
    }
    
    /*
        isOperator method
        @param o
        @return true/false
    */
    public static boolean isOperator(Object o)
    {
        String s = ( String ) o;
        switch(s) {
            case "+":
                return true;
            case "-":
                return true;
            case "*":
                return true;
            case "/":
                return true;
            case "(":
                return true;
            case ")":
                return true;
            case "{":
                return true;
            case "}":
                return true;
            case "[":
                return true;
            case "]":
                return true;
            default:
                return false;
        }
    }
    
    /*
        isParRight method
        @param o
        @return true/false
    */
    public static boolean isParRight(Object o)
    {
        String s = ( String ) o;
        switch(s) {
            case ")":
                return true;
            case "}":
                return true;
            case "]":
                return true;
            default:
                return false;
        }
    }
    
    /*
        isParLeft method
        @param o
        @return true/false
    */
    public static boolean isParLeft(Object o)
    {
        String s = ( String ) o;
        switch(s) {
            case "(":
                return true;
            case "{":
                return true;
            case "[":
                return true;
            default:
                return false;
        }
    }
    
    /*
        doMath method
        @param lV, rV, o
        @return calcuation
    */
    public static double doMath(double lV, double rV, Object o)
    {
        //System.out.println("lV: " + lV + ", rV: " + rV + ", O: " + o);
        String s = ( String ) o;
        switch(s) {
            case "+":
                return lV + rV;
            case "-":
                return lV - rV;
            case "*":
                return lV * rV;
            case "/":
                return lV / rV;
        }
        return 0;
    }
    
    /*
        preOrder method
        @param t
        @return returnString, returns preOrder t in a string
    */
    public static <E> String preOrder(LinkedBinaryTree<E> t)
    {
        String returnString = "";
        for(Position<E> p : t.preorder())
        {
            returnString = returnString + p.getElement() + " ";
        }
        return returnString;
    }
    
    /*
        inOrder method
        @param t
        @return returnString, returns inOrder t in a string
    */
    public static <E> String inOrder(LinkedBinaryTree<E> t)
    {
        String returnString = "";
        for(Position<E> p : t.inorder())
        {
            returnString = returnString + p.getElement() + " ";
        }
        return returnString;
    }
    
    /*
        postOrder method
        @param t
        @return returnString, returns postOrder t in a string
    */
    public static <E> String postOrder(LinkedBinaryTree<E> t)
    {
        String returnString = "";
        for(Position<E> p : t.postorder())
        {
            returnString = returnString + p.getElement() + " ";
        }
        return returnString;
    }
    
    /*
        breadthFirst method
        @param t
        @return returnString, returns breadthFirst t in a string
    */
    public static <E> String breadthFirst(LinkedBinaryTree<E> t)
    {
        String returnString = "";
        for(Position<E> p : t.breadthfirst())
        {
            returnString = returnString + p.getElement() + " ";
        }
        return returnString;
    }
    
    /*
        eulerTour method
        @param t
        Prints out left and right children using the euler tour
    */
    public static <E> void eulerTour(LinkedBinaryTree<E> t, Position<E> p)
    {
        System.out.print("(");
        if(t.left(p) != null)
        {
            eulerTour(t,t.left(p));
        }
        System.out.print(p.getElement());
        if(t.right(p) != null)
        {
            eulerTour(t,t.right(p));
        }
        System.out.print(")");
    }
}

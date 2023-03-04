import java.util.Iterator;
import java.util.List;

/**
 *
 * @author Samuel Swedberg
 * @version 10/25/22
 * 
 * A client class that demonstrates ways to travel along a LinkedBinaryTree
 */
public class Client {
    public static void main(String[] args) {
        
        
        LinkedBinaryTree root0 = new LinkedBinaryTree();
        LinkedBinaryTree root1 = new LinkedBinaryTree();
        LinkedBinaryTree root2 = new LinkedBinaryTree();
        LinkedBinaryTree root5 = new LinkedBinaryTree();
        LinkedBinaryTree root12 = new LinkedBinaryTree();
        
        LinkedBinaryTree root11 = new LinkedBinaryTree();
        LinkedBinaryTree root6 = new LinkedBinaryTree();
        
        root0.addRoot("+"); // 0
        
        root1.addRoot("*"); // 1
        root1.addLeft(root1.root(), "9"); // 3
        root1.addRight(root1.root(), "8"); // 4
        
        root2.addRoot("*"); // 2
        root5.addRoot("/"); // 5
        root6.addRoot("-2"); // 6
        
        
        root11.addRoot("17"); // 11
        root12.addRoot("+"); // 12
        root12.addLeft(root12.root(), "14"); // 25
        root12.addRight(root12.root(), "23"); // 26
        
        root5.attach(root5.root(), root11, root12); // Attaches 11 and 12
        root2.attach(root2.root(), root5, root6); // Attaches 5 and 6
        root0.attach(root0.root(), root1, root2); // Attaches 1 & 2
        
        String expression = "( 9 * 8 ) + ( 17 / ( 14 + 23 ) * -2 )"; // Prints expression as a string
        System.out.println("Expression: " + expression);
        
        
        System.out.println(root0.preorder());
        System.out.println("Height: " + root0.height(root0.root())); // Prints height
        System.out.println("Preorder: " + preOrder(root0)); // Prints preorder traversal
        System.out.println("Inorder: " + inOrder(root0)); // Prints inorder traversal 
        System.out.println("Postorder: " + postOrder(root0)); // Prints postorder traversal 
        System.out.println("Breadthfirst: " + breadthFirst(root0)); // Prints breadthfirst
        
        System.out.print("Eulertour: "); // Prints eulertour
        eulerTour(root0, root0.root());
        System.out.print("\n");
    }
    
    /*
        preOrder method
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
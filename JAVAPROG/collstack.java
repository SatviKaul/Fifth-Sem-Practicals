
import java.util.*;

public class collstack {
	
	static void stpush(Stack<Integer> s) {
		for(int i=1; i<6; i++)
			System.out.println("Pushed " + s.push(i));
		System.out.println("Stack: " + s);
	}
	
	static void stpop(Stack<Integer> s) {
		for(int i=1; i<6; i++)
			System.out.println("Popped " + s.pop());
		System.out.println("Stack: " + s);
	}
	
	public static void main(String args[]) {
		Stack<Integer> s = new Stack<Integer>();
		stpush(s);
		stpop(s);
	}
}


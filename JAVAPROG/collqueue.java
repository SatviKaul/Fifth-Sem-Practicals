import java.util.*;

public class collqueue {

	static void enq(Queue<Integer> q) {
		for(int i=1;i<6;i++) {
			q.add(i);
			System.out.println("Enqueued " + i);
		}
		System.out.println("Queue: " + q);
	}
	
	static void deq(Queue<Integer> q) {
		for(int i=1;i<6;i++) {
			int l = q.remove();
			System.out.println("Dequeued " + l);
		}
		System.out.println("Queue: " + q);
	}
	
	public static void main(String[] args) {
		Queue<Integer> q = new LinkedList<Integer>();
		enq(q);
		deq(q);
	}

}

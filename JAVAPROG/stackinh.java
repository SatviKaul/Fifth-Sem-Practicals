class stack {
	int top, size;
	int a[] = new int[10];
	
	stack() {
		top = -1;
		size = 0;
	}
	
	void push(int data) {
		if(size==10) {
			System.out.println("Overflow");
			return;
		}	
		top++;
		a[top] = data;
		size ++;
		System.out.println("Pushed " + data);
	}
	
	int pop() {
		if(size==0) {
			System.out.println("Underflow");
			return -1;
		}
		int data = a[top];
		top--;
		size--;
		System.out.print("Popped ");
		return data;
	}
	
	void display() {
		System.out.print("Stack is [");
		for(int i=0; i<=top; i++) {
			System.out.print(a[i]);
			if(i!=top)
				System.out.print(",");
		}
		System.out.print("]\n");
	}
}


public class stackinh extends stack {
	public static void main(String args[]) {
		
		stack s = new stack();
		for(int i=1; i<6; i++)
			s.push(i);
		s.display();
		for(int i=1;i<6;i++) {
			int el = s.pop();
			System.out.println(el);
		}	
		s.display();
	}
}

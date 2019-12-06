
class MyException extends Exception {
	private int d;
	MyException(int a) {
		d = a;
	}
	
	public String toString() {
		return "MyException(" + d + ")";
	}
}

public class custexcept {
	
	static void compute(int a) throws MyException {
		System.out.println("Called compute(" + a + ")");
		if(a>10)
			throw new MyException(a);
		System.out.println("Normal Exit");
	}

	public static void main(String[] args) {
		try {
			compute(10);
			compute(20);
		}
		catch(MyException e) {
			System.out.println("Caught " + e);
		}

	}

}

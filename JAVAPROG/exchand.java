
public class exchand {

	public static void main(String[] args) {
		
		int a[] = {5,10};
		int b = 5;
		
		try {
			int x = a[1]/(a[0] - b);
		}
		catch(ArithmeticException Ae) {
			System.out.println("Division by zero exception caught.");
		}
		catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("Array index out of bounds exception caught.");
		}
		catch(Exception e) {
			System.out.println("Exception caught.");
		}
		finally {
			System.out.println("Program Executed.");
		}
	}

}

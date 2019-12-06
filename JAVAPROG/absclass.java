abstract class figure {
	int dim1, dim2;
	figure(int dim1, int dim2) {
		this.dim1 = dim1;
		this.dim2 = dim2;
	}
	
	abstract void area();
}

class Rectangle extends figure {
	int len, bred;
	Rectangle(int len, int bred) {
		super(len, bred);
	}
	
	void area() {
		System.out.println("Area of rectangle = " + dim1*dim2);
	}
}

class Triangle extends figure {
	int ht, bred;
	Triangle(int ht, int bred) {
		super(ht, bred);
	}
	
	void area() {
		System.out.println("Area of triangle = " + 0.5*dim1*dim2);
	}
}

public class absclass {
	public static void main(String args[]) {
		Rectangle r = new Rectangle(4,5);
		Triangle t = new Triangle(4,5);
		figure f;
		f = r;
		f.area();
		f = t;
		f.area();
	}
}

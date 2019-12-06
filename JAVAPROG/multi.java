
interface twowheeler {
	void scooter();
	void motorcycle();
}

interface fourwheeler {
	void hatchback();
	void sedan();
}

class vehicle implements twowheeler, fourwheeler {
	public void scooter() {
		System.out.println("This is scooter");
	}
	
	public void motorcycle() {
		System.out.println("This is motorcycle");
	}
	
	public void hatchback() {
		System.out.println("This is hatchback");
	}
	
	public void sedan() {
		System.out.println("This is sedan");
	}
}

public class multi {

	public static void main(String[] args) {
		vehicle v = new vehicle();
		v.scooter();
		v.motorcycle();
		v.hatchback();
		v.sedan();
	}

}

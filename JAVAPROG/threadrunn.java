
public class threadrunn implements Runnable {
	Thread t;
	threadrunn() {
		t = new Thread(this, "Child");
		System.out.println(t);
		t.start();
	}
	
	public void run() {
		try {
			for(int i=5;i>0;i--) {
				System.out.println("Child Thread: " + i);
				Thread.sleep(1000);
			}
		}
		catch(InterruptedException e) {
			System.out.println("Child Thread Interrupted.");
		}
		System.out.println("Child Thread exiting.");
	}
	
	public static void main(String args[]) {
		new threadrunn();
		try {
			for(int i=5;i>0;i--) {
				System.out.println("Main Thread: " + i);
				Thread.sleep(2000);
			}
		}
		catch(InterruptedException e) {
			System.out.println("Main Thread Interrupted.");
		}
		System.out.println("Main Thread exiting.");
	}
}

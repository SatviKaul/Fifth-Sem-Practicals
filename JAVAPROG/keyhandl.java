import java.awt.*;
import java.awt.event.*;
import java.applet.*;

/*
 * <applet code="keyhandl" width=300 height=100>
 * </applet>
 */

public class keyhandl extends Applet implements KeyListener {
	string msg = "";
	int x = 10, y = 20;
	
	public void init() {
		addKeyListener(this);
	}
	
	public void keyPressed(KeyEvent ke) {
		showStatus("Key Down");
	}
	
	public void keyReleased(KeyEvent ke) {
		showStatus("Key Up");
	}
	
	public void keyTyped(KeyEvent ke) {
		msg += ke.getKeyChar();
		repaint();
	}
	
	public void paint(Graphics g) {
		g.drawString(msg, x, y);
	}
 }

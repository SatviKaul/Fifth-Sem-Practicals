
import java.awt.*;
import java.applet.*;

/*
 * <applet code="gridlayout" width=400 height=400>
 * </applet>
 */

public class gridlayout extends Applet {
	public void init() {
		setLayout(new GridLayout(3,2));
		add(new Button("1"));
		add(new Button("2"));
		add(new Button("3"));
		add(new Button("4"));
		add(new Button("5"));
		add(new Button("6"));
	}
}

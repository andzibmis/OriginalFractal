public void setup () {
	size (500, 500);
}

public void draw () {
	background (0);
	noFill ();
	myFractal (0, 250, 450);
}

public void myFractal (int x, int y, int siz) {
	stroke (180, 70, 110, mouseX + 30);
	ellipse (x, y, siz, siz);
	if (siz > 5) {
		myFractal (x, y - mouseX, siz / 2);
		myFractal (x, y + mouseX, siz / 2);
		myFractal (x + mouseX, y, siz / 2);
	}
}
  public void setup() {
  size(500, 500);
  background(0);
  rectMode(CENTER);
}

public void draw() {
  noFill();
  stroke(255);
  myFractal(250,150,200);
}

public void myFractal(int x, int y, int siz) {
  ellipse(x, y, siz, siz);
 // int myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));

  if (siz > 10) {
    //fill(myColor);
     myFractal(x,y+20,siz/2);
  }
}

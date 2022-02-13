   public void setup() {
  size(500, 500);
  background(0);
  rectMode(CENTER);
}

public void draw() {
  int myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
  noFill();
  stroke(myColor);
  myFractal(400,100,90);
  myFractal(250,250,200);
  myFractal(100,100,90);
  myFractal(400,400,90);
  myFractal(100,400,90);
}

public void myFractal(int x, int y, int siz){
  ellipse(x, y, siz, siz);
  rect(x,y,siz,siz);

  if (siz > 20) {
     myFractal(x+siz/2,y,siz/2);
     myFractal(x-siz/2,y,siz/2);
     myFractal(x,y+siz/2,siz/2);
     myFractal(x,y-siz/2,siz/2);
  }
}

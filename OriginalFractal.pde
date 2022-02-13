    public void setup() {
  size(500, 500);
  background(0);
  rectMode(CENTER);
}

public void draw() {
  int myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
  noLoop();
  noFill();
  stroke(myColor);
  myCircle(400,100,90);
  myCircle(250,250,300);
  myCircle(100,100,90);
  myCircle(400,400,90);
  myCircle(100,400,90);
}


public void myCircle(int x, int y, int siz){
  ellipse(x,y,siz,siz);
  if(siz > 12){
     myCircle(x+siz/4,y,siz/2);
     myCircle(x-siz/4,y,siz/2);
     myCircle(x,y+siz/4,siz/2);
     myCircle(x,y-siz/4,siz/2);
  }
}

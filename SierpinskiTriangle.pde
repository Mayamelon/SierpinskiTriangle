double lenLimit = 20;

public void setup()
{
  size(1280, 720);
}
public void draw()
{
  background(0,0,0);
  noStroke();
  fill (255, 255, 255);
  triangle(200, 670, 1080, 670, 640, 50);
  fill(0,0,0);
  sierpinski(420, 360, 440);
}

public void keyPressed() {
  if (key == 'a' && lenLimit > 1)
    lenLimit /=2;
  if (key == 'd' && lenLimit < 640)
    lenLimit *=2;

}

public void sierpinski(float x, float y, float len) 
{
  triangle(x, y, x+len, y, x+(len/2), y +(len*sqrt(2)/2));
  if (len > lenLimit) {
    sierpinski(x-len/4, y+(len*sqrt(2)/4), len/2);
    sierpinski(x+3*len/4, y+(len*sqrt(2)/4), len/2);
    sierpinski(x+len/4, y-(len*sqrt(2)/4), len/2);
  }
}

public void setup()
{
  size(1280, 720);
}
public void draw()
{
  noStroke();
  fill (0,0,0);
  triangle(200, 670, 1080, 670, 640, 50);
  fill(255,255,255);
  sierpinski(420, 360, 440);
}
public void mouseDragged()//optional
{

}
public void sierpinski(float x, float y, float len) 
{
  triangle(x, y, x+len, y, x+(len/2), y +(len*sqrt(2)/2));
  if (len <= 20) {
    
  }
  else {
    sierpinski(x-len/4, y+(len*sqrt(2)/4), len/2);
    sierpinski(x+3*len/4, y+(len*sqrt(2)/4), len/2);
    sierpinski(x+len/4, y-(len*sqrt(2)/4), len/2);
  }
}

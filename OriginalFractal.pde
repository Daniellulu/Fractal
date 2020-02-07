int base = 0;
boolean hPressed;
boolean gPressed;
int col;
public void setup()
{
size(500,500);
}
public void keyPressed() {
  if (key == 'h')
    hPressed = true;
    if (key == 'g')
    gPressed = true;
}
public void keyReleased() {
  if (key == 'h')
    hPressed = false;
    if (key == 'g')
    gPressed = false;
}
public void draw()
{
  col = (int) (Math.random() *255);
 if(hPressed == true)
  base += 10;
  
  background(0);
  noStroke();
  fill(col);
  if(gPressed == true)
 
  base -= 10;
  noStroke();
  fill(col);
  
fractal(250,250,base);
}




public void fractal(int x, int y, int len) 
{
if(len <50){
circle(x,y, len);
}
else
{
  fractal(x,y, len/2);
  fractal(x+len/2,y, len/2);
  fractal(x-len/2,y, len/2);
  fractal(x,y+len/2, len/2);
  fractal(x,y-len/2, len/2);
 
}

}

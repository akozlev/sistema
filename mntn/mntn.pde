int count = 100;
float xoff=0.0;
float xofftemp=0.0;
void setup()
{
  size(1080, 1080);
  background(255);
  strokeWeight(2);
  //lines();
}

void draw()
{
  background(255);
  lines();
}

void lines()
{
  float position = height/count;
  xoff = xofftemp;
  for(int i = 0; i < count; i++)
  {
    if (i==1) xofftemp=xoff;
    //line(position, 0, position, width/2+noise(xoff)*(width/4));
    
    position+=width/count; 
    xoff+=0.1;
  }
}

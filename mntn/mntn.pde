int count = 82;
float xoff=0.0;
float xofftemp=0.0;
void setup()
{
  size(1080, 1080);
  background(255);
  strokeWeight(3);
  lines();
  frameRate(10);
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
    line(position, 0, position, width/2+noise(xoff)*(width/4));
    line(position, width/2+noise(xoff)*(width/4), position+width/count, width/2+noise(xoff+0.1)*(width/4));
    line(position, width/2+noise(xoff)*(width/4), position+width/count, width/5+noise(xoff+0.1)*(width/4));
    line(position, width/2+noise(xoff)*(width/3), position+width/count, width/2+noise(xoff+0.1)*(width/3));
    line(position, height, position, width/2+noise(xoff)*(width/3));
    position+=width/count; 
    xoff+=0.1;
  }
}

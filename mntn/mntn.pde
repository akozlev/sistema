int count = 49;
float xoff=0.0;
float xofftemp=0.0;

float test=0.01;

float scale;
float scale2;
void setup()
{
  size(1080, 1080);
  background(255);
  strokeWeight(3);
//  lines();
  frameRate(30);
  
  scale = height/2;
  scale2 = height/2;
  //noLoop();
}

void draw()
{
  background(255);
  mountains();
  
}

void keyPressed()
{
  if (key == 'r')
    {
      count = 50;
      test = 0.3;
    }
  if (key == 'i')
      test+=0.01;
  if (key == 'k')
      test-=0.01;
  if (key == 'o')
      count+=1;
  if (key == 'l')
      count-=1;
  
}
void mountains()
{
  noStroke();
  float position = 0;
  xoff = xofftemp;

  for(int i = 0; i < count+1; i++)
  {

    if (i==1) xofftemp=xoff;
    
         
    fill(180);
    noiseSeed(20011109);
    quad(position, 
         height/10+noise(xoff)*scale2,
         
         position+(float)width/count,
         height/10+noise(xoff+test)*scale2,
         
         position+(float)width/count,
         height,
         
         position,
         height);
    
    //if(i%2==0)fill(60);
    //else fill(200);
    fill(80);
    noiseSeed(19980501);
    quad(position,
         width/3+noise(xoff)*scale,
         
         position+width/count,
         width/3+noise(xoff+test)*scale,
         
         position+height/count,
         height,
         
         position,
         height      
         );
         
    fill(30);
    noiseSeed(19971107);
    quad(position, 
         width/2+noise(xoff)*scale2,
         
         position+width/count,
         width/2+noise(xoff+test)*scale2,
         
         position+height/count,
         height,
         
         position,
         height);
    

    position+=width/count; 
    xoff+=test;
  }
}

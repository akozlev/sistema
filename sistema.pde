ParticleSystem ps;
float a=-1, b=0;
int x=-50, y=-50;

void setup() {
  size(1080, 1080);
  for  ( int i = 0; i < 10; i++)
  {
    ps=new ParticleSystem(new PVector(x, y));
    x+=width/10;
  }
  colorMode(HSB, 255);
  }

void draw() {
  background(255);
  
  if(a>=1) a=-1;
  if(b<=-2) b=0;
  
  
      ps.addParticle(a,b);
      ps.run();
    
  a=randomGaussian()*2;
  b=randomGaussian()*2;
}
void keyPressed()
{
  if (keyCode == ENTER)  save((int)random(1000) + ".png");
}

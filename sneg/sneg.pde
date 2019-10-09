ParticleSystem ps;
ParticleSystem ps2;
int count = 500;
int count2 = 500;
int time = 0;

void setup()
{
    size(1080,1080);
    
    background(0, 255);
    ps = new ParticleSystem(new PVector(width/2, height/2));
    ps2 = new ParticleSystem(new PVector(width/2, height/2));
    addParticles(count);
    //frameRate(60);


}

void draw()
{
    translate(width/2, height/2);
    background(0);
    for ( Particle p : ps.particles)
    {
      //p.display();
      p.update();
    }
    for ( Particle p : ps2.particles)
    {
      p.display();
      p.update();
    }
    /*
    for (int i = 0; i<count; i++)
    {
        ps.particles.get(i).update();
        if (i < count2)
        {
          if (time > 200)
          {
            ps2.particles.get(i).update();
            ps2.particles.get(i).display();
          }
        }
    }*/
    time++;
    
}

void addParticles(int count)
{
    for (int i = 0; i < count; i++) {
      
        ps.addParticle(0.4,0.6, 255);
        if(i < count2)
        {
           ps2.addParticle(0.5,1, 255);
        }
    }
}

void keyPressed()
{
  if (keyCode == DOWN)
  {
    save("diagonal"+ random(5000) + ".png");
  }
}

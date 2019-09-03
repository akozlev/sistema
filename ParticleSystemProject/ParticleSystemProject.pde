ParticleSystem[] ps = new ParticleSystem[10];
ParticleSystem ps2;
float a=-1, b=0;
int x=10, y= 100;
void setup() {
  size(640, 360);
  for  ( int i = 0; i< 10; i++)
  {
    ps[i]=new ParticleSystem(new PVector(x, y));
    x+=10;
    y-=10;
  }
  
}

void draw() {
  background(0);
  
  if(a>=1) a=-1;
  if(b<=-2) b=0;
  
  for ( int i = 0; i<10; i++)
  {
      ps[i].addParticle(a,b);
      ps[i].run();
  }
  
  a+=0.01;
  b-=0.01;
}


// A class to describe a group of Particles
// An ArrayList is used to manage the list of Particles 

class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector position) {
    origin = position.copy();
    particles = new ArrayList<Particle>();
  }

  void addParticle(float a, float b) {
    particles.add(new Particle(origin, a, b));
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}


// A simple Particle class

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l, float a, float b) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(a, b);
    position = l.copy();
    lifespan = 75.0;
  }

  void run() {
    update();
    display();
  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
  }

  // Method to display
  void display() {
    stroke(255, lifespan);
    fill(255, 255);
    ellipse(position.x, position.y, 8, 8);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}

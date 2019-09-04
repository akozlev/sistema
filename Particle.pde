
class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  int gray;

  Particle(PVector l, float a, float b) {
    acceleration = new PVector(0, 4);
    velocity = new PVector(a, b);
    position = l.copy();
    lifespan = 300.0;    
    gray = 255;
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

    gray-=10;
  }

  // Method to display
  void display() {
    colorMode(RGB, 255);
    stroke(gray,gray,gray, 40);
    fill(gray, gray, gray, 40);
    arc(width, 0, random(0, 2*width), random(0, 2*height), width*1/4, height/2);
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

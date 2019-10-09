class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  int gray;
  float factor = 0.0000007;
  float factor2 = 0.5;

  Particle(PVector l, float a, float b, int c) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(a, b);
    position = l.copy();
    lifespan = 90.0;    
    gray = c;
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

    //gray-=0.00;
    factor*=1.1;
 
  }

  // Method to display
  void display() {
    colorMode(RGB, 255);
    stroke(gray,gray,gray, 255);
    fill(gray, gray, gray, 255);
    int pos = (int) random(4);
    float xfactor = factor;
    float yfactor = factor;
    switch (pos)
    {
      case 0:
        xfactor = 1;
        yfactor = 1;
        break;
      case 1:
        xfactor = -1;
        yfactor = 1;
        break;
      case 2:
        xfactor = 1;
        yfactor = -1;
        break;
      case 3:
        xfactor = -1;
        yfactor = -1;
        break;
      
    }
    line(0, 0, width*xfactor*factor + xfactor*random(0, width*factor2), height*yfactor*factor + yfactor*random(0, height*factor2));
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

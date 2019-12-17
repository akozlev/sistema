class Hexagon {
  float centx;
  float centy;
  float radius;
  float angle = TWO_PI / 6;
  boolean fill = false;
  color c;

  Hexagon( float x, float y, float r)
  {
    centx = x;
    centy = y;
    radius = r;
  }
  //Our Constructor takes the center coordinates along with a value for radius
  Hexagon( float x, float y, float r, color c)
  {
    centx = x;
    centy = y;
    radius = r;
    this.c = c;
    fill = true;
  }

  //The draw function will define the fill values and calculate the coordinates
  void draw() {
    if (fill)
      fill(c);
    else
      noFill();

    beginShape();
    for (float a = PI/6; a < TWO_PI; a += angle) {
      float sx = centx + cos(a) * radius;
      float sy = centy + sin(a) * radius;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }

  //The following are all simply utility functions for setting parameters
  float centx()
  {
    return centx;
  }

  float centy()
  {
    return centy;
  }

  color getColour()
  {
    return c;
  }

  void setFillColour(color col)
  {
    fill = true;
    c = col;
  }

  void setNoFill(boolean yesno)
  {
    fill = yesno;
  }
}

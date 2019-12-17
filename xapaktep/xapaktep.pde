void setup()
{
  size(600, 600);
  background(255);
  noLoop();
}

void draw()
{
  //translate(width/4,height/4);

  color c = color(random(255), random(255), random(255), random(255));

  fill(c);
  
  noStroke();
  
  circle(random(1)*width, random(1)*height, 150-random(50));
}

void keyPressed()
{
  if(key == 'r') redraw();
  if(key == 'b') filter(BLUR, 6);
  if(key == 'd') filter(DILATE);
  if(key == 'p') saveFrame("output/texture-######.png");
}

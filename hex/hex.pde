/* 
 Louis Christodoulou - Hexagonal Grid Test
 May 2016
 */

HexGrid g;
color[] mainpallet = {#FFFFFF, #000000};
int rad, nwide, nhigh;


void setup()
{
  size(800, 800);
  smooth();
  background(255);

  //Define some of our grid parameters
  rad=6;
  nhigh = (height/((rad*3)/2));
  nwide = int(width/(sqrt(3)*rad))+1;

  //Generate our grid object by calling the constructor
  g = new HexGrid(nwide, nhigh, rad);
  //Draw our newly generated grid
  stroke(255);
  g.draw();

  frameRate(60);
  noLoop();
}

void draw()
{
  populateGrid();
  //Since our grid cells now have a state, we can redraw our grid without loosing changes
  g.draw();

  //Each time draw loops we select 5 random hexagons in our grid and assign a
  //random colour from the pallet
}
void populateGrid() {
  // Center
  int col = 1;
  int row = 4;
  g.getHex(col, row).setFillColour(0);
  
  
  g.getHex(col, row-1).setFillColour(0);

  g.getHex(col+1, row-1).setFillColour(0);
  
  g.getHex(col-1, row).setFillColour(0);
  
  g.getHex(col+1, row).setFillColour(0);
  
  g.getHex(col, row+1).setFillColour(0);
    
  g.getHex(col+1, row+1).setFillColour(0);
  
}

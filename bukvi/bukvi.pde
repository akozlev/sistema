PFont f;
float xoff = 0.01;
float yoff = 0.001;

void setup() {
  size(1080, 1080);
  background(0);

  // Create the font
  printArray(PFont.list());
  f = createFont("SansSerif.bold", 24);
  textFont(f);
  textAlign(CENTER, CENTER);
  frameRate(10);
//} 

//void draw() {
  background(0);

  // Set the left and top margin
  int margin = 10;
  //translate(margin*2, margin*2);

  drawLetters();
  drawLetters();

}
void drawLetters()
{
  int gap = 30;
  int counter = 35;
  
  for (int y = 0; y < height-gap; y += gap) {
    for (int x = 0; x < width-gap; x += gap) {

      char letter = char(counter);
      
      //if (letter == 'A' || letter == 'E' || letter == 'I' || letter == 'O' || letter == 'U') {
      //fill(255, 204, 0);
      //} 
      //else {
        fill(255);
      //}

      // Draw the letter to the screen
      text(letter, y+noise(yoff)*100, x+noise(xoff)*100);
      xoff+=0.01;
      yoff+=0.001;
      // Increment the counter
      //counter++;
    }
    counter++;
  }
}

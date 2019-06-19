/*
Nested Loops practice, maping scale
To do: Ask Tim to clarify logic!
 */

float grey;
float maxSq;

void setup () {
  size(500, 500);
  background(20);
  grey = 204;
  maxSq= 20; //20 boxes across and down
}

void draw() {
  background(grey);
  // Scale the magnitude/dist of mouseX,Y value to 0 to a range between canvas and num of squares
  float value = map(mag (mouseX, mouseY), 0, mag(width, height), 0, maxSq);
  // Insert the 'value' of the map into numSqs to generate squres
  float numSquares = int(value);
  // multiplly numsqaures each time
  float spacing = (2.0 * numSquares +1);
  float w = width / spacing; 
  float h = height /spacing;

  for (int j = 0; j<numSquares; j++) {
    float y = (1 + 2 * j) * width / spacing;

    for (int i = 0; i<numSquares; i++) {
      if ((i + j) % 2 == 0)
        fill (0);
      else 
        fill (255);
        float x = (1 + 2 * i) * width/ spacing;
        rectMode(CORNER);
        rect (x, y, w, h);
      }
    }
  }

// Source 1: https://processing.org/
// Source 2: https://www.youtube.com/watch?v=I5yoAsXWtOs

class Button {
  PVector pos = new PVector(0, 0);
  float Unit = 0;
  color Color;
  color newColor;
  Boolean press = false;

  // constructor to create button
  Button(int x, int y, int u, int r, int g, int b) {
    pos.x = x;
    pos.y = y;
    Unit = u;
    Color = color(r, g, b);
    newColor = lerpColor(color(r, g, b), color(255, 0, 0), 1.0);
  }
  
  // update the button upon click
  void update() {
    if (press) {
      fill(newColor);
    } else {
      fill(Color);
    }

    square(pos.x, pos.y, Unit);
  }
  
  // measurement for button so that only the button the mouse is over is clicked
  boolean mouseOver() {
    if (mouseX > pos.x && mouseX < (pos.x + Unit) && mouseY > pos.y && mouseY < (pos.y + Unit)) {
      return true;
    }
    else {
      return false;
    }
  }
  
  void display() {
    
  }
}

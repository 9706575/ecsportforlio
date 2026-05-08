class Button {
  //Member variables
  int x, y, w, h;
  String label;

  //constructor
  Button(int x, int y, int w, int h, String label) {
    this.label = label;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
  }


  void display() {
    if (isMouseOver()) {
      fill(80);
    } else {
      fill(50);
    }
    rectMode(CENTER);
    rect(x, y, w, h, 5);
    fill(255);
    textAlign(CENTER);
    text(label, x, y);
  }

  boolean isMouseOver() {
    return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
  }

  boolean wasClicked() {
    return true;
  }
}

// Dominic Prim | 25 Feb 2026 | Timeline
void setup() {
  size(950, 400);
}

void draw() {
  background(#C5BB9A);
  drawRef();
  histEvent(90, 200, "Aug 1785", true, "First successful ascent of Mont Blanc by Balmat and Paccard, a landmark in early mountaineering.");
  histEvent(135, 300, "Jun 1790", false, "Recreational walking grows in Europe alongside the Romantic movement.");
  histEvent(320, 200, "Dec 1830", true, "The Alpine Club is founded in London, the worlds first mountaineering organization.");
  histEvent(460, 300, "Mar 1850", false, "Yellowstone becomes the first U.S. National Park, protecting land for public recreation.");
  histEvent(570, 200, "Jun 1860", true, "The Appalachian Mountain Club forms to promote hiking and trail building.");
  histEvent(650, 300, "May 1875", false, "The Sierra Club is founded in San Francisco to support conservation and outdoor recreation.");
  histEvent(750, 200, "Jul 1895", true, "Benton MacKaye proposes the Appalachian Trail, sparking development of the long distance route.");
  histEvent(850, 300, "Jun 1915", false, "Modern hiking expands rapidly with better gear, transportation, and outdoor culture.");
}

void drawRef() {
  fill(#332806);
  textAlign(CENTER);
  textSize(36);
  text("Hiking: A Timeline", width/2, 70);
  textSize(20);
  text("by Dom Prim", width/2, 95);

  fill(#463914);
  strokeWeight(3);
  line(50, 250, 900, 250);
  strokeWeight(2);
  line(50, 240, 50, 260);
  text("1780", 50, 285);
  line(150, 240, 150, 260);
  text("1800", 150, 285);
  line(250, 240, 250, 260);
  text("1820", 250, 285);
  line(350, 240, 350, 260);
  text("1840", 350, 285);
  line(450, 240, 450, 260);
  text("1850", 450, 285);
  line(550, 240, 550, 260);
  text("1860", 550, 285);
  line(650, 240, 650, 260);
  text("1880", 650, 285);
  line(750, 240, 750, 260);
   text("1900", 750, 285);

}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-15, y+50);
  } else {
    line(x, y, x-15, y-50);
  }

  rectMode(CENTER);
  fill(#F0E7CC);
  rect(x, y, 100, 30, 10);
  fill(#706132);
  text(title, x, y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    text(detail,width/2,350);
  }
}

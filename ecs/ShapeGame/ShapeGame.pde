// Dom Prim | 4 Mar 2026 | ShapeGame
int x, y, tx, ty, score;
float tw;
PImage player;
PImage target;

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
  tx = int(random(20, width-20));
  ty = int(random(20, width-20));
  tw = 200;
  score = 0;
  player = loadImage("character.png");
  target = loadImage("object.png");
}

void draw() {
  background(100, 140, 80);
  scorePanel();
  target();
  imageMode(CENTER);
  image(player, x, y);
  imageMode(CENTER);
  image(target, tx, ty);
  //ellipse(x, y, 20, 20);
}

void target () {
  float d = dist(x, y, tx, ty);
  println(d);
  println(score);
  if (d<35) {
    score = score + 10;
    tx = int(random(20, width-20));
    ty = int(random(20, width-20));
  }
  rectMode(CENTER);
  if (tw<10) {
    gameOver();
  }
  image(target, tx, ty);
  tw = tw - 0.4;
  target.resize(int(tw), int(tw));
}

void gameOver() {
  background(0);
  fill(255, 0, 0);
  textSize(40);
  text("Game Over", width/2, height/2);
  noLoop();
}

void scorePanel() {
  rectMode (CENTER);
  fill(190, 50, 50, 80);
  rect(width/2, 15, width, 30);
  fill(0);
  textSize(25);
  text("score:" + score, 20, 25);
}

void keyPressed() {
  if (x > width) {
    x = 0;
  }

  // WASD and Arrow Movement
  if (key == 'w' || key == 'W' || keyCode == UP) {
    y = y - 20;
  } else if (key == 's' || key == 'S' || keyCode == DOWN) {
    y = y + 20;
  } else if (key == 'a' || key == 'A' || keyCode == LEFT) {
    x = x - 20;
  } else if (key == 'd' || key =='D' || keyCode == RIGHT) {
    x = x + 20;
  }
}

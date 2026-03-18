// Dominic Prim | 18 mar 2026 | Breakable Wall

boolean b1=true, b2=true, b3=true, b4=true, b5=true;
boolean b6=true, b7=true, b8=true, b9=true, b10=true;
boolean b11=true, b12=true, b13=true, b14=true, b15=true;
boolean b16=true, b17=true, b18=true, b19=true, b20=true;
boolean b21=true, b22=true, b23=true, b24=true, b25=true;

int w = 60;
int h = 60;

void setup() {
  size(300, 300);
}

void draw() {
  background(220);
  fill(200);

  if (b1) rect(0, 0, w, h);
  if (b2) rect(60, 0, w, h);
  if (b3) rect(120, 0, w, h);
  if (b4) rect(180, 0, w, h);
  if (b5) rect(240, 0, w, h);

  if (b6) rect(0, 60, w, h);
  if (b7) rect(60, 60, w, h);
  if (b8) rect(120, 60, w, h);
  if (b9) rect(180, 60, w, h);
  if (b10) rect(240, 60, w, h);

  if (b11) rect(0, 120, w, h);
  if (b12) rect(60, 120, w, h);
  if (b13) rect(120, 120, w, h);
  if (b14) rect(180, 120, w, h);
  if (b15) rect(240, 120, w, h);

  if (b16) rect(0, 180, w, h);
  if (b17) rect(60, 180, w, h);
  if (b18) rect(120, 180, w, h);
  if (b19) rect(180, 180, w, h);
  if (b20) rect(240, 180, w, h);

  if (b21) rect(0, 240, w, h);
  if (b22) rect(60, 240, w, h);
  if (b23) rect(120, 240, w, h);
  if (b24) rect(180, 240, w, h);
  if (b25) rect(240, 240, w, h);

  fill(0);
  text("Press R to reset", 10, 295);
}

void mousePressed() {

  if (mouseY < 60) {
    if (mouseX < 60) b1 = false;
    else if (mouseX < 120) b2 = false;
    else if (mouseX < 180) b3 = false;
    else if (mouseX < 240) b4 = false;
    else b5 = false;
  } else if (mouseY < 120) {
    if (mouseX < 60) b6 = false;
    else if (mouseX < 120) b7 = false;
    else if (mouseX < 180) b8 = false;
    else if (mouseX < 240) b9 = false;
    else b10 = false;
  } else if (mouseY < 180) {
    if (mouseX < 60) b11 = false;
    else if (mouseX < 120) b12 = false;
    else if (mouseX < 180) b13 = false;
    else if (mouseX < 240) b14 = false;
    else b15 = false;
  } else if (mouseY < 240) {
    if (mouseX < 60) b16 = false;
    else if (mouseX < 120) b17 = false;
    else if (mouseX < 180) b18 = false;
    else if (mouseX < 240) b19 = false;
    else b20 = false;
  } else if (mouseY < 300) {
    if (mouseX < 60) b21 = false;
    else if (mouseX < 120) b22 = false;
    else if (mouseX < 180) b23 = false;
    else if (mouseX < 240) b24 = false;
    else b25 = false;
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    b1=b2=b3=b4=b5=
      b6=b7=b8=b9=b10=
      b11=b12=b13=b14=b15=
      b16=b17=b18=b19=b20=
      b21=b22=b23=b24=b25=true;
  }
}

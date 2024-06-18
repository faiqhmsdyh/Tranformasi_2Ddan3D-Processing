PShape letterF;
PShape letterN;

float angleF = 0;
float angleN = 0;
boolean mirrorF = false;
boolean mirrorN = false;
boolean showAxes = false; 

float posX_F = 200;
float posY_F = 400;
float posX_N = 600;
float posY_N = 400;

void setup() {
  size(800, 800);
  background(255);

  // Membuat bentuk huruf F 
  letterF = createShape();
  letterF.beginShape();
  letterF.vertex(0, 0);
  letterF.vertex(240, 0);
  letterF.vertex(240, 100);
  letterF.vertex(100, 100);
  letterF.vertex(100, 160);
  letterF.vertex(240, 160);
  letterF.vertex(240, 240);
  letterF.vertex(100, 240);
  letterF.vertex(100, 400);
  letterF.vertex(0, 400);
  letterF.endShape(CLOSE);

  // Membuat bentuk huruf N 
  letterN = createShape();
  letterN.beginShape();
  letterN.vertex(0, 300);
  letterN.vertex(0, 0);
  letterN.vertex(100, 0);
  letterN.vertex(200, 140);
  letterN.vertex(200, 0);
  letterN.vertex(300, 0);
  letterN.vertex(300, 300);
  letterN.vertex(200, 300);
  letterN.vertex(100, 140);
  letterN.vertex(100, 300);
  letterN.endShape(CLOSE);
}

void draw() {
  background(255); 
  lights();

  if (showAxes) {
    drawAxes(); // Gambar sumbu X dan Y 
  }

  // Menempatkan dan menggambar huruf F
  pushMatrix();
  translate(posX_F, posY_F);
  if (mirrorF) {
    scale(-1, 1);
  }
  rotate(angleF);
  shape(letterF, -120, -200); 
  popMatrix();
  
  // Menempatkan dan menggambar huruf N
  pushMatrix();
  translate(posX_N, posY_N);
  if (mirrorN) {
    scale(-1, 1);
  }
  rotate(angleN);
  shape(letterN, -150, -150); 
  popMatrix();
}

void drawAxes() {
  stroke(0);
  strokeWeight(2);

  // Sumbu X
  line(0, height / 2, width, height / 2);
  // Sumbu Y
  line(width / 2, 0, width / 2, height);
}

void keyPressed() {
  // Toggle mirror for both letters
  if (key == 'f' || key == 'F') {
    mirrorF = !mirrorF;
    mirrorN = !mirrorN;
  }
  // Rotate both letters
  if (key == 'r' || key == 'R') {
    angleF += PI / 8;
    angleN += PI / 8;
  }
  // Arrow keys for translation
  if (keyCode == UP) {
    posY_F -= 10;
    posY_N -= 10;
  }
  if (keyCode == DOWN) {
    posY_F += 10;
    posY_N += 10;
  }
  if (keyCode == LEFT) {
    posX_F -= 10;
    posX_N -= 10;
  }
  if (keyCode == RIGHT) {
    posX_F += 10;
    posX_N += 10;
  }
  
}

void centerObject(PShape obj) {
  obj.translate(-300, -650, -50);
}

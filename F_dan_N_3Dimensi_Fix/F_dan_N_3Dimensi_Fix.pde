//HURUF F DAN N

PShape letterF;
PShape letterN;
float angleY = 0;
float angleX = 0;
boolean rotateUp = false;
boolean rotateDown = false;
boolean rotateLeft = false;
boolean rotateRight = false;

void setup() {
  size(800, 800, P3D);
  
  noStroke();
  fill(255);
  
  letterF = createShape(GROUP);
  
  // Sisi depan
  PShape frontF = createShape();
  frontF.beginShape();
  frontF.vertex(100, 900, 0);
  frontF.vertex(100, 400, 0);
  frontF.vertex(350, 400, 0);
  frontF.vertex(350, 500, 0);
  frontF.vertex(200, 500, 0);
  frontF.vertex(200, 600, 0);
  frontF.vertex(350, 600, 0);
  frontF.vertex(350, 700, 0);
  frontF.vertex(200, 700, 0);
  frontF.vertex(200, 900, 0);
  frontF.endShape(CLOSE);
  letterF.addChild(frontF);
  
  // Sisi belakang
  PShape backF = createShape();
  backF.beginShape();
  backF.vertex(100, 900, 100);
  backF.vertex(100, 400, 100);
  backF.vertex(350, 400, 100);
  backF.vertex(350, 500, 100);
  backF.vertex(200, 500, 100);
  backF.vertex(200, 600, 100);
  backF.vertex(350, 600, 100);
  backF.vertex(350, 700, 100);
  backF.vertex(200, 700, 100);
  backF.vertex(200, 900, 100);
  backF.endShape(CLOSE);
  letterF.addChild(backF);
  
  // Sisi samping kiri
  PShape leftF = createShape();
  leftF.beginShape();
  leftF.vertex(100, 900, 0);
  leftF.vertex(100, 900, 100);
  leftF.vertex(100, 400, 100);
  leftF.vertex(100, 400, 0);
  leftF.endShape(CLOSE);
  letterF.addChild(leftF);
  
  // Sisi atas
  PShape topF = createShape();
  topF.beginShape();
  topF.vertex(100, 400, 0);
  topF.vertex(350, 400, 0);
  topF.vertex(350, 400, 100);
  topF.vertex(100, 400, 100);
  topF.endShape(CLOSE);
  letterF.addChild(topF);
  
  // Sisi bawah
  PShape bottomF = createShape();
  bottomF.beginShape();
  bottomF.vertex(100, 900, 0);
  bottomF.vertex(100, 900, 100);
  bottomF.vertex(200, 900, 100);
  bottomF.vertex(200, 900, 0);
  bottomF.endShape(CLOSE);
  letterF.addChild(bottomF);
  
  // Sisi samping kanan
  PShape rightF = createShape();
  rightF.beginShape();
  rightF.vertex(200, 900, 0);
  rightF.vertex(200, 900, 100);
  rightF.vertex(200, 700, 100);
  rightF.vertex(200, 700, 0);
  rightF.endShape(CLOSE);
  letterF.addChild(rightF);
  
  // Bagian-bagian tambahan yang belum ditambahkan dengan benar
  PShape rightTop1F = createShape();
  rightTop1F.beginShape();
  rightTop1F.vertex(200, 700, 0);
  rightTop1F.vertex(350, 700, 0);
  rightTop1F.vertex(350, 700, 100);
  rightTop1F.vertex(200, 700, 100);
  rightTop1F.endShape(CLOSE);
  letterF.addChild(rightTop1F);
  
  PShape rightBottomF = createShape();
  rightBottomF.beginShape();
  rightBottomF.vertex(350, 700, 0);
  rightBottomF.vertex(350, 700, 100);
  rightBottomF.vertex(350, 600, 100);
  rightBottomF.vertex(350, 600, 0);
  rightBottomF.endShape(CLOSE);
  letterF.addChild(rightBottomF);
  
  PShape rightBottomBackF = createShape();
  rightBottomBackF.beginShape();
  rightBottomBackF.vertex(200, 600, 0);
  rightBottomBackF.vertex(350, 600, 0);
  rightBottomBackF.vertex(350, 600, 100);
  rightBottomBackF.vertex(200, 600, 100);
  rightBottomBackF.endShape(CLOSE);
  letterF.addChild(rightBottomBackF);
  
  PShape leftBottomBackF = createShape();
  leftBottomBackF.beginShape();
  leftBottomBackF.vertex(200, 600, 0);
  leftBottomBackF.vertex(200, 600, 100);
  leftBottomBackF.vertex(200, 500, 100);
  leftBottomBackF.vertex(200, 500, 0);
  leftBottomBackF.endShape(CLOSE);
  letterF.addChild(leftBottomBackF);
  
  PShape leftBottomF = createShape();
  leftBottomF.beginShape();
  leftBottomF.vertex(200, 500, 0);
  leftBottomF.vertex(350, 500, 0);
  leftBottomF.vertex(350, 500, 100);
  leftBottomF.vertex(200, 500, 100);
  leftBottomF.endShape(CLOSE);
  letterF.addChild(leftBottomF);
  
  PShape rightTopBackF = createShape();
  rightTopBackF.beginShape();
  rightTopBackF.vertex(100, 400, 0);
  rightTopBackF.vertex(350, 400, 0);
  rightTopBackF.vertex(350, 400, 100);
  rightTopBackF.vertex(100, 400, 100);
  rightTopBackF.endShape(CLOSE);
  letterF.addChild(rightTopBackF);
  
  PShape rightTop2F = createShape();
  rightTop2F.beginShape();
  rightTop2F.vertex(350, 500, 0);
  rightTop2F.vertex(350, 500, 100);
  rightTop2F.vertex(350, 400, 100);
  rightTop2F.vertex(350, 400, 0);
  rightTop2F.endShape(CLOSE);
  letterF.addChild(rightTop2F);
  
  // Mengatur posisi pusat huruf "F"
  centerObject(letterF);
  
  letterN = createShape(GROUP);
  
  //Sisi depan
  PShape frontN = createShape();
  frontN.beginShape();
  frontN.vertex(100, 900, 0);
  frontN.vertex(100, 400, 0);
  frontN.vertex(200, 400, 0);
  frontN.vertex(400, 700, 0);
  frontN.vertex(400, 400, 0);
  frontN.vertex(500, 400, 0);
  frontN.vertex(500, 900, 0);
  frontN.vertex(400, 900, 0);
  frontN.vertex(200, 600, 0);
  frontN.vertex(200, 900, 0);
  frontN.endShape(CLOSE);
  letterN.addChild(frontN);
  
  // Sisi belakang
  PShape backN = createShape();
  backN.beginShape();
  backN.vertex(100, 900, 100);
  backN.vertex(100, 400, 100);
  backN.vertex(200, 400, 100);
  backN.vertex(400, 700, 100);
  backN.vertex(400, 400, 100);
  backN.vertex(500, 400, 100);
  backN.vertex(500, 900, 100);
  backN.vertex(400, 900, 100);
  backN.vertex(200, 600, 100);
  backN.vertex(200, 900, 100);
  backN.endShape(CLOSE);
  letterN.addChild(backN);
  
  // sisi kiri
  PShape leftN = createShape();
  leftN.beginShape();
  leftN.vertex(100, 900, 0);
  leftN.vertex(100, 900, 100);
  leftN.vertex(100, 400, 100);
  leftN.vertex(100, 400, 0);
  leftN.endShape(CLOSE);
  letterN.addChild(leftN);
  
  // Sisi atas
  PShape topN = createShape();
  topN.beginShape();
  topN.vertex(100, 400, 0);
  topN.vertex(200, 400, 0);
  topN.vertex(200, 400, 100);
  topN.vertex(100, 400, 100);
  topN.endShape(CLOSE);
  letterN.addChild(topN);
  
  // Sisi bawah
  PShape bottomN = createShape();
  bottomN.beginShape();
  bottomN.vertex(100, 900, 0);
  bottomN.vertex(100, 900, 100);
  bottomN.vertex(200, 900, 100);
  bottomN.vertex(200, 900, 0);
  bottomN.endShape(CLOSE);
  letterN.addChild(bottomN);
  
  // sisi kanan
  PShape rightN = createShape();
  rightN.beginShape();
  rightN.vertex(200, 900, 0);
  rightN.vertex(200, 900, 100);
  rightN.vertex(200, 900, 100);
  rightN.vertex(200, 900, 0);
  rightN.endShape(CLOSE);
  letterN.addChild(rightN);
  
  // Sisi diagonal depan
  PShape diagonalN = createShape();
  diagonalN.beginShape();
  diagonalN.vertex(200, 400, 0);
  diagonalN.vertex(400, 700, 0);
  diagonalN.vertex(400, 700, 100);
  diagonalN.vertex(200, 400, 100);
  diagonalN.endShape(CLOSE);
  letterN.addChild(diagonalN);
  
  // Sisi kana atas
  PShape rightTopN = createShape();
  rightTopN.beginShape();
  rightTopN.vertex(400, 400, 0);
  rightTopN.vertex(500, 400, 0);
  rightTopN.vertex(500, 400, 100);
  rightTopN.vertex(400, 400, 100);
  rightTopN.endShape(CLOSE);
  letterN.addChild(rightTopN);
  
  // Sisi kanan bawah
  PShape rightBottomN = createShape();
  rightBottomN.beginShape();
  rightBottomN.vertex(400, 900, 0);
  rightBottomN.vertex(500, 900, 0);
  rightBottomN.vertex(500, 900, 100);
  rightBottomN.vertex(400, 900, 100);
  rightBottomN.endShape(CLOSE);
  letterN.addChild(rightBottomN);

  // Sisi kanan tengah
  PShape rightMiddleN = createShape();
  rightMiddleN.beginShape();
  rightMiddleN.vertex(400, 900, 0);
  rightMiddleN.vertex(400, 900, 100);
  rightMiddleN.vertex(500, 900, 100);
  rightMiddleN.vertex(500, 900, 0);
  rightMiddleN.endShape(CLOSE);
  letterN.addChild(rightMiddleN);
  
  // Sisi pojok kanan sebelah kanan
  PShape rightSideRightN = createShape();
  rightSideRightN.beginShape();
  rightSideRightN.vertex(500, 400, 0);
  rightSideRightN.vertex(500, 400, 100);
  rightSideRightN.vertex(500, 900, 100);
  rightSideRightN.vertex(500, 900, 0);
  rightSideRightN.endShape(CLOSE);
  letterN.addChild(rightSideRightN);
  
  // Sisi pojok kanan sebelah kiri
  PShape rightSideLeftN = createShape();
  rightSideLeftN.beginShape();
  rightSideLeftN.vertex(400, 400, 0);
  rightSideLeftN.vertex(400, 400, 100);
  rightSideLeftN.vertex(400, 900, 100);
  rightSideLeftN.vertex(400, 900, 0);
  rightSideLeftN.endShape(CLOSE);
  letterN.addChild(rightSideLeftN);
  
  // Sisi diagonal bawah
  PShape diagonalDownN = createShape();
  diagonalDownN.beginShape();
  diagonalDownN.vertex(400, 900, 0);
  diagonalDownN.vertex(400, 900, 100);
  diagonalDownN.vertex(200, 600, 100);
  diagonalDownN.vertex(200, 600, 0);
  diagonalDownN.endShape(CLOSE);
  letterN.addChild(diagonalDownN);
  
  // Sisi pojook kiri sebelah kanan
  PShape leftSideRightN = createShape();
  leftSideRightN.beginShape();
  leftSideRightN.vertex(200, 600, 0);
  leftSideRightN.vertex(200, 600, 100);
  leftSideRightN.vertex(200, 900, 100);
  leftSideRightN.vertex(200, 900, 0);
  leftSideRightN.endShape(CLOSE);
  letterN.addChild(leftSideRightN);

  // Mengatur posisi pusat huruf "N"
  centerObject(letterN);
}
     
void draw() {
  background(170);
  lights();
  
  // Menggambar huruf "F"
  pushMatrix();
  translate(width / 4, height / 2, -200);
  rotateX(angleX);
  rotateY(angleY);
  shape(letterF);
  popMatrix();
  
  // Menggambar huruf "N"
  pushMatrix();
  translate(width * 3 / 4, height / 2, -200);
  rotateX(angleX);
  rotateY(angleY);
  shape(letterN);
  popMatrix();
  
  // Rotasi huruf berdasarkan input keyboard
  handleRotation();
}

void handleRotation() {
  if (rotateUp) {
    angleX += 0.02;
  }
  if (rotateDown) {
    angleX -= 0.02;
  }
  if (rotateLeft) {
    angleY += 0.02;
  }
  if (rotateRight) {
    angleY -= 0.02;
  }
}

void keyPressed() {
  if (keyCode == UP) {
    rotateUp = true;
  }
  if (keyCode == DOWN) {
    rotateDown = true;
  }
  if (keyCode == LEFT) {
    rotateLeft = true;
  }
  if (keyCode == RIGHT) {
    rotateRight = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    rotateUp = false;
  }
  if (keyCode == DOWN) {
    rotateDown = false;
  }
  if (keyCode == LEFT) {
    rotateLeft = false;
  }
  if (keyCode == RIGHT) {
    rotateRight = false;
  }
}

void centerObject(PShape obj) {
  obj.translate(-300, -650, -50);
}

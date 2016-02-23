void settings() {
  size(400, 800, P2D);
}

void setup() {
  noLoop();
  background(30, 200, 0);
}

void draw() {
  plant(15, 0.4, 0.8);
}

void leaf() {
  beginShape();
    vertex(100.0, -70.0);
    bezierVertex(90.0, -60.0, 40.0, -100.0, 0.0, 0.0);
    bezierVertex(0.0, 0.0, 100.0, 40.0, 100.0, -70.0);
  endShape();
}

void plant(int numLeaves, float minLeafScale, float maxLeafScale) {
  line(width/2, 0, width/2, height);
  int gap = height/numLeaves;
  float angle = 0;
  
  for (int i = 0; i < numLeaves; i++) {
    int x = width/2;
    int y = gap*i + (int)random(gap);
    float scale = random(minLeafScale, maxLeafScale);
    
    pushMatrix();
    rotate(angle);
      translate(x,y);
      scale(scale);
            
      leaf();
    popMatrix();
    
    angle += PI/8;
  }
}
/*boolean isMoving = true;

void mousePressed() {
  if (isMoving) {
    noLoop();
    isMoving = false;
  }
  else {
    loop();
    isMoving = true;
  }
}*/
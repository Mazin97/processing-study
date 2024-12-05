class Star {
  float x;
  float y;
  float z;
  float pz;
  float starColorR;
  float starColorG;
  float starColorB;
  
  Star() {
    resetPosition();
    z = random(width);
    pz = z;
    setStarColor();
  }
  
  void update() {
    z = z - speed;
    
    if (z < 1) {
      z = width;
      resetPosition();
    }
  }
  
  void resetPosition() {
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    pz = z;
  }
  
  void setStarColor() {
    boolean shouldBeSpecial = random(10) >= 9.5;
    
    if (shouldBeSpecial) {
      starColorR = random(255);
      starColorG = random(255);
      starColorB = random(255);
      return;
    }
    
    starColorR = 50;
    starColorG = 50;
    starColorB = 50;
  }
  
  void show() {   
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    
    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height);
    
    pz = z;
    
    float r = map(z, 0, width, width/32, 0);
    fill(starColorR, starColorG, starColorB, 255);
    noStroke();
    ellipse(sx, sy, r, r);
    
    
    stroke(starColorR, starColorG, starColorB, 255);
    strokeWeight(r);
    line(px, py, sx, sy);
  }
}

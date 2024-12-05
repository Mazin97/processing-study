class Drop {
  float x = random(width);
  float y = random(0, height);
  float size = random(10, 25);
  float weight = size / 10;
  float speed = this.size / 1.5;

  void update() {
    if (this.y > height) {
      this.y = random(-10, -100);
      this.speed = this.size / 1.5;
      return;
    }
    
    this.y += speed;
    speed += 0.1;
    this.show();
  }

  void show() {
    stroke(138, 43, 226);
    strokeWeight(this.weight);
    line(this.x, this.y, this.x, this.y + this.size);
  }
}

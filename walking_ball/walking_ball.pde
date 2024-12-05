float circleX;
float circleY;
boolean isIncreasingX;
boolean isIncreasingY;
int speed = 3;
float backgroundColor = 0;

void setup () {
  isIncreasingX = true;
  isIncreasingY = true;
  circleX = random(0, width);
  circleY = random(0, height);

  size(640, 360);
}

void draw () {
  background(backgroundColor);
  fill(255);
  ellipse(circleX, circleY, 24, 24);

  if (isIncreasingX) {
    circleX += speed;
  } else {
    circleX -= speed;
  }

  if (isIncreasingY) {
    circleY += speed;
  } else {
    circleY -= speed;
  }

  if (circleX >= width || circleX <= 0) {
    isIncreasingX = !isIncreasingX;
    backgroundColor = random(255);
  }

  if (circleY >= height || circleY <= 0) {
    isIncreasingY = !isIncreasingY;
    backgroundColor = random(255);
  }
}

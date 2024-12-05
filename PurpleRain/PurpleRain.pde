ArrayList<Drop> drops;

void setup() {
  size(800, 400);
  
  drops = new ArrayList<Drop>();
  
  for (int i = 0; i < 300; i++) {
    Drop drop = new Drop();
    drops.add(drop);
  }
}

void draw() {
  background(230, 230, 250);
  for (Drop d : drops) {
    d.update();
  }
}

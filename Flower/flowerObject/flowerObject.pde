Flower myFlower0;    // Den første flower class
Flower myFlower1;    // Den anden flower class
Flower myFlower2;    // Den tredje flower class
Flower myFlower3;    // Den fjerde flower class

void setup() {
  size(1500, 1500);    // Canvas size
  textMode(CENTER);

  // Integer variabler
  int r0 = 60;
  int r1 = 20;
  int r2 = 40;
  int r3 = 110;
  int petals = 8;
  int pc = #FF9500;

  // Float variabler
  float x = width/2;
  float y = height/2;

  // Fremkaldning af myFlower1- 2 og 3. Hvorved der gives nye variabler
  myFlower0 = new Flower(r0, petals, x, y, pc);
  myFlower1 = new Flower(r1, petals, x+random(-100, 100), y, pc);
  myFlower2 = new Flower(r2, petals, x + 50, y, pc);
  myFlower3 = new Flower(r3, petals, x - 100, y, pc);
}

void draw() {
  background(#FFE9FF);    // Canvas farve

  // Sammensætning af classes med myFlower1
  myFlower0.display();
  myFlower0.move();
  myFlower0.boundaries();
  myFlower0.ColorChange();
  myFlower0.guide();

  // Sammensætning af classes med myFlower2
  myFlower1.display();
  myFlower1.move2();
  myFlower1.boundaries();
  myFlower1.ColorChange();
  myFlower1.guide();

  // Sammensætning af classes med myFlower3
  myFlower2.display();  
  myFlower2.move3();
  myFlower2.boundaries();
  myFlower2.ColorChange();
  myFlower2.guide();

  // Sammensætning af classes med myflower4
  myFlower3.display();  
  myFlower3.move3();
  myFlower3.boundaries();
  myFlower3.ColorChange();
  myFlower3.guide();
}

void mousePressed() {
  myFlower0.reset();
  myFlower1.reset();
  myFlower2.reset();
  myFlower3.reset();
}

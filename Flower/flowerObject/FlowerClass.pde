// Credit to Lukas Harkamp for helping ^_^
class Flower {

  // Float variabler
  float r;
  float x; 
  float y;
  float SpeedX = random(-5, 10);
  float SpeedY = random(-5, 10);

  // Integer variabler
  int n_petals;
  int petalColor;

  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) {
    r = temp_r;
    n_petals = temp_n_petals;
    x = temp_x;
    y = temp_y;
    petalColor = temp_petalColor;
  }

  void display () {
    float CenterX;
    float CenterY;

    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      CenterX = x + r*cos(i);
      CenterY = y + r*sin(i);

      ellipse(CenterX, CenterY, r, r);
    }

    fill(200, 255, 50);
    ellipse(x, y, r*1.2, r*1.2);
  }

  // Der laves 3 forskellige move classes, da de ikke skal bevæge sig med samme hastighed
  void move() {    // Class for at give bevægelse til x og y koordinatet
    x += SpeedX;
    y += SpeedY;
  }

  void move2 () {    // Class for at give bevægelse til x og y koordinatet
    x += SpeedX;
    y += SpeedY;
  }

  void move3 () {    // Class for at give bevægelse til x og y koordinatet
    x += SpeedX;
    y += SpeedY;
  }

  void move4 () {    // Class for at give bevægelse til x og y koordinatet
    x += SpeedX;
    y += SpeedY;
  }

  void boundaries() {    // Class for at blomsterne bouncer på siderne af canvas
    if (x > width - r || x < 0 + r) {
      SpeedX = SpeedX * -1.05;    // Hver gang den rammer siderne, forøges hastigheden med 5%
    }
    if (y > height - r || y < 0 + r) {
      SpeedY = SpeedY * -1.05;    // Hver gang den rammer siderne, forøges hastigheden med 5%
    }
  }

  void ColorChange() {    // Class for at blomsterne skifter farver når de rammer en af siderne
    if (x > width - r || x < 0 + r) {
      petalColor = int(random(#000000, #FFFFFF));    // Hver gang den rammer siderne, ændres farverne
    }
    if (y > height - r || y < 0 + r) {
      petalColor = int(random(#000000, #FFFFFF));    // Hver gang den rammer siderne, ændres farverne
    }
  }

  void guide() {
    textSize(24);
    fill(#000000);
    text("Click anywhere to reset", x , y);
  }

  void reset() {
    x = width/2;
    y = height/2;
    SpeedX = random(-5, 10);
    SpeedY = random(-5, 10);
    petalColor = #FF9500;
  }
}

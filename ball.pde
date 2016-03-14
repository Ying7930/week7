class Ball {
  float x;
  float y;
  float radius;
  float xSpeed;
  float ySpeed;
  float r;
  float b;
  float g;

  void move() {
    x = x + xSpeed;
    y = y + ySpeed;
  }


  void display() {
    noStroke();
    fill(r, b, g);
    ellipse(x, y, radius*2, radius*2);
  }

  void bounce() {
    if (x - radius < 0 || x + radius > width) {
      xSpeed = -xSpeed;
    }
    if (y - radius < 0 || y + radius > height) {
      ySpeed = -ySpeed;
    }
  }
}

Ball[] b = new Ball[1000];

void setup() {
  size(500, 500);
  background(255);

  for (int i = 0; i < b.length; i = i+1) {
    b[i] = new Ball();

    b[i].radius = 10;

    b[i].x = width/2;
    b[i].y = height/2;

    b[i].xSpeed = random(-3, 3);
    b[i].ySpeed = random(-3, 3);
    
    b[i].r = random(255);
    b[i].b = random(255);
    b[i].g = random(255);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < b.length; i = i+1) {
    b[i].display();
    b[i].move();
    b[i].bounce();
  }
}

class Ball {
  float x;
  float y;
  float radius;
  float xSpeed;
  float ySpeed;
  //value of color
  float r;
  float b;
  float g;
  //for rectangles
  float j;
  float z;
  
  void move() {
    x = x + xSpeed;
    y = y + ySpeed;
  }


  void display() {
    noStroke();
    fill(r*5, b*3, g*2, 26);
    rect(y, j, z/3, z/3); // bubble rect

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
    
    b[i].r = random(0, 255);
    b[i].b = random(0, 255);
    b[i].g = random(0, 255);//to make sure each ball will only got one color
    
    b[i].j = random(500);
    b[i].z = random(200);
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

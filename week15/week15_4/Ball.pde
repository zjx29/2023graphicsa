class Ball {
  float x, y, r;
  float vx, vy;
  Ball(int x0, int y0, int r0) {
    x = x0;
    y = y0;
    r = r0;
    vx = random(-10, +10);
    vy = random(-10, +10);
  }
  boolean checkCollision(Ball other){
    if(dist(x,y,other.x,other.y)<r+other.r)
    PVector diff = new PVector(other.x-x,other.y-y);
    float len = diff.mag();
    float a = diff.heading();
    
    PVector N = diff.copy().normalize();
    N.mult(N.dot(new PVector(vx,vy)));
    PVector N2 = new PVector(-N.y,N.x).normalize();
    N2.mult(N2.dot(new PVector(vx,vy)));
    
    PVector M = diff.copy().normalize();
    M.mult( M.dot(new PVector(other.vx, other.vy)) );
    PVector M2 = new PVector(-M.y, M.x).normalize();
    M2.mult( M2.dot(new PVector(other.vx, other.vy)) );

    PVector newW1 = PVector.add(M, N2);
    PVector newW2 = PVector.add(N, M2);
    vx = newW1.x;
    vy = newW1.y;
    other.vx = newW2.x;
    other.vy = newW2.y;
    return true;
    } else return false;
}
 void update() {
  if(x+vx > 640-4 || x+vx < 0+r) vx = -vx;
  if(y+vy < 0+r || y+vy >360-r) vy = -vy;
  x += vx;
  y += vy;
  }
  void display() {
    ellipse(x, y, r+r, r+r);
  }
}

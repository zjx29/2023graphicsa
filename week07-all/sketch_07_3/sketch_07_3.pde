void setup(){
  size(500,400);
} 

float x=250, y=200;
void draw(){
  background(215,184,200);
 float dx = mouseX - x, dy = mouseY - y;
 float a = atan2(dy,dx);
 line(x,y,mouseX,mouseY);
 myTank(x,y,a);
}
void myTank(float x,float y,float a){
  translate(x,y);
  rotate(a);
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(4);
  rect(20,-10,20,20);
  
 
 fill(204,102,156);
 stroke(125,84,105);
 strokeWeight(3);
 ellipse(0,0,55,55);
 
 line(x,y,mouseX,mouseY);
}

void setup(){
  size(500,400);
} 

float x=250, y=200;
void draw(){
  background(215,184,200);
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(4);
  rect(240,180,20,20);
  
 
 fill(204,102,156);
 stroke(125,84,105);
 strokeWeight(3);
 ellipse(x,y,55,55);
 
 line(x,y,mouseX,mouseY);
}

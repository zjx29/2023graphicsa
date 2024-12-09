void setup(){
    size(500, 500);
    background(255);
}

void draw(){

}

void mouseDragged(){
    if(mouseButton == LEFT) 
        line(mouseX, mouseY, pmouseX, pmouseY); 
    loadPixels(); 
    for(int i = 0; i < width*height; i++){
        if(pixels[i] != -1) pixels[i] = color(random(255), random(255), random(255));
    }
    updatePixels(); 
 }

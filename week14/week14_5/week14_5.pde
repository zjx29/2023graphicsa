void setup(){
    size(500, 500);
    background(#FFFFF2);
}

void draw(){
    if(mousePressed && mouseButton == LEFT) 
        line(mouseX, mouseY, pmouseX, pmouseY);

    if(mousePressed && mouseButton == RIGHT){
        loadPixels(); 
        color cl = pixels[mouseX + mouseY * 500]; 
        color c2 = color(random(255), random(255), random(255));  
        if(cl != c2) myFloodFill(mouseX, mouseY, cl, c2); 
        updatePixels(); 
    }
}

boolean isOK(int x, int y, color cl){
    if(x < 0 || x >= 500 || y < 0 || y >= 500) return false; 
    if(pixels[x + y * 500] != cl) return false;
    return true;
}

void myFloodFill(int x, int y, color cl, color c2){
    pixels[x + y * 500] = c2;
    if(isOK(x+1, y, cl)) myFloodFill(x+1, y, cl, c2);
    if(isOK(x-1, y, cl)) myFloodFill(x-1, y, cl, c2);
    if(isOK(x, y+1, cl)) myFloodFill(x, y+1, cl, c2);
    if(isOK(x, y-1, cl)) myFloodFill(x, y-1, cl, c2);
}

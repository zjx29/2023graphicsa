int [][] maze = {
  {1,1,1,1,1,1,1,1,1,1},
  {1,0,0,0,1,0,0,0,1,1},
  {1,1,0,1,1,0,1,0,1,1},
  {1,1,0,1,0,0,1,0,1,1},
  {1,1,0,1,0,1,0,1,1,1},
  {1,0,0,0,1,0,0,0,1,1},
  {1,0,1,1,0,1,1,0,1,1},
  {1,0,0,0,0,1,1,0,1,1},
  {1,1,1,1,1,1,0,0,1,1},
  {1,1,1,1,1,1,1,1,1,1},
};

void setup() {
  size(400, 400);
}

void draw() {
  for(int i=0; i<maze.length; i++) {
    for(int j=0; j<maze[0].length; j++) {
      if(maze[i][j] == 1) fill(0);
      else fill(255);
      rect(j*40, i*40, 40, 40);
    }
  }
}

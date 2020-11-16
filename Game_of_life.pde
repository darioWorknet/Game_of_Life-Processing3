//space for var
import java.lang.Math; 
Grid g;
Cell c;
boolean  [] [] virtualBoard;
Random random;
Board b;
int rows;
int screenSize;
boolean gamePlay;

void setup(){
  gamePlay = true; 
  size (1000, 1000);  
  screenSize = width;
  rows = 50;
  int cellSize = screenSize/rows;
  
  g = new Grid(rows, screenSize);
  c = new Cell(cellSize);
  b = new Board();
  random = new Random();
  virtualBoard = new boolean [rows][rows];

  for (int x=0; x < virtualBoard.length; x++){
    for (int y=0; y< virtualBoard.length; y++){
      virtualBoard[x][y]=random.getBool();
    }
  }   
}


void keyPressed (){
 gamePlay = !gamePlay;
 
}

void mousePressed(){
System.out.println (mouseX + "  " + mouseY);
int x = ((int)mouseX - 0) * (rows - 0) / (screenSize - 0) + 0 ;
int y = ((int)mouseY - 0) * (rows - 0) / (screenSize - 0) + 0 ;
System.out.println (x + "  " + y);
 
if (virtualBoard[x][y] == true){
  virtualBoard[x][y] = false;
}else{
  virtualBoard[x][y] = true;
}

}


void draw(){
  
  
  background(40, 10, 36);
  stroke(100);
  
  //g.show();
  c.show(virtualBoard);
  delay (100);
  if (gamePlay){
  virtualBoard = b.nextState(virtualBoard);
  }else{
    g.show();
  }

  
  
  
}

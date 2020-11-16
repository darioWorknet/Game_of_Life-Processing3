class Board {
  
  boolean[][] nextState(boolean [][] b){
  int rows = b.length;
  boolean  [] [] newBoard = new boolean [rows][rows];
   for (int x=0; x < rows; x++){
    for (int y=0; y< rows; y++){
      if (b[x][y]){ //if cell is alive
        int neig = 0;
        if (b[Math.floorMod(x-1, rows)][Math.floorMod(y-1, rows)]){
          neig ++;
        }
        if (b[x][Math.floorMod(y-1, rows)]){
          neig ++;
        }
        if (b[(x+1)%rows][Math.floorMod(y-1, rows)]){
          neig ++;
        }
        if (b[Math.floorMod(x-1, rows)][y]){
          neig ++;
        }
        if (b[(x+1)%rows][y]){
          neig ++;
        }
        if (b[Math.floorMod(x-1, rows)][(y+1)%rows]){
          neig ++;
        }
        if (b[x][(y+1)%rows]){
          neig ++;
        }
        if (b[(x+1)%rows][(y+1)%rows]){
          neig ++;
        }
        
        if (neig == 2 || neig == 3){ //newBoard [x][y] is false by default (other conditions ommited)
          newBoard[x][y] = true;
        }
      
      }else{ // if cell is dead
        int neig = 0;
        if (b[Math.floorMod(x-1, rows)][Math.floorMod(y-1, rows)]){
          neig ++;
        }
        if (b[x][Math.floorMod(y-1, rows)]){
          neig ++;
        }
        if (b[(x+1)%rows][Math.floorMod(y-1, rows)]){
          neig ++;
        }
        if (b[Math.floorMod(x-1, rows)][y]){
          neig ++;
        }
        if (b[(x+1)%rows][y]){
          neig ++;
        }
        if (b[Math.floorMod(x-1, rows)][(y+1)%rows]){
          neig ++;
        }
        if (b[x][(y+1)%rows]){
          neig ++;
        }
        if (b[(x+1)%rows][(y+1)%rows]){
          neig ++;
        }
        
        if (neig == 3){ //newBoard [x][y] is false by default (other conditions ommited)
          newBoard[x][y] = true;
        }      
      
      
      

      }
    }
  } 
  return newBoard;
}
  
}

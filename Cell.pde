class Cell{
  
  int cellSize;
  
  Cell (int cellSize){
    this.cellSize = cellSize;
  }
  
  
  
  void show(boolean[] [] b){
    noStroke();
    fill(210, 72, 20);

    for (int x=0; x < b.length; x++){
      for (int y=0; y< b.length; y++){
        if (b[x][y]){
        
        pushMatrix();
        translate(x*cellSize, y*cellSize);
        rect(0 ,0,cellSize  ,cellSize );
        popMatrix();
        }
      }
    }

  }
  
}

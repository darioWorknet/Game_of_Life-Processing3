class Grid{
  
  public int rows;
  int cols;
  public int size;
  
  Grid(int rows, int size){
    this.rows = rows;
    this.cols = rows;
    this.size = size;
  }
  
  void show (){
    int cell = size/ rows;
    for (int x = 0; x < size; x += cell){
     line (x, 0, x, size); 
    }
    for (int y = 0; y < size; y += cell){
     line (0, y, size, y); 
    }
  }
  

}

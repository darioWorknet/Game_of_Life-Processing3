class Random{
   
  boolean getBool(){
    int randomN = (int)random(2);
    boolean randomB = false;
    if (randomN == 0){
      randomB = false;
  }else{
    randomB = true;
  }
  return randomB;
  }
}

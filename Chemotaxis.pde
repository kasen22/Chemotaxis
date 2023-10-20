class bacteria{
  int myX, myY;
  int myColor ;
  bacteria(){
  myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = myY =250;
  }
  void move()
  {
    //myX = myX + (int)(Math.random()*7)-1;
    //myY = myY + (int)(Math.random()*7)-3;
  if (mouseX>myX){
   myX = myX+(int)(Math.random()*5)-1;
} else{
  myX = myX+(int)(Math.random()*5)-3;
}
  if (mouseY>myY){
   myY = myY+(int)(Math.random()*5)-1;
} else{
  myY = myY+(int)(Math.random()*5)-3;
}
  }
  void show(){
    fill(myColor);
    ellipse(myX,myY,30,30);
  }
}

bacteria [] bobs;

void setup(){
  size(500,500);
  bobs = new bacteria[200];
  for (int i=0; i<bobs.length; i++)
  bobs[i]= new bacteria();
}
void draw(){
  background(0);

  for(int i = 0; i <bobs.length; i++){
    bobs[i].move();
    bobs[i].show();
  }
 
}

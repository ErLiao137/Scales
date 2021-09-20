//Both stars?
void setup() {
  size(500, 500);
  //noLoop();
}
void draw() {
  boolean shift = true;
  for (int y = 0; y < 501; y+=20) {
    for (int x = 0; x < 501; x+=20) {
      if(shift == true)
      starX(x, y);
      else
        starD(x,y);
     }
     if(shift == true) {
       shift = false; }
       else {
         shift = true;
       }  
}
}

void starX(int x, int y ) {
  fill(255, 255, 0);
  //star has a size of 20 by 20
  beginShape();
  vertex(x+10, y+6);//1 and 5
  vertex(x, y);//2
  vertex(x+6, y+10);//3 and 7
  vertex(x, y+20);//4
  vertex(x+10, y+14);//5
  vertex(x+20, y+20);//6
  vertex(x+14, y+10);//7
  vertex(x+20, y);//8
  endShape(CLOSE);
}

void starD(int x, int y) {
 fill(255,255,0);
  beginShape();
 vertex(x+10, y);//1 and 5
 vertex(x+7, y+7);//2
 vertex(x, y+10);//3 and 7
  vertex(x+7, y+13);//4
  vertex(x+10, y+20);//5
  vertex(x+13, y+13);//6
  vertex(x+20, y+10);//7
  vertex(x+13, y+7);//8
  endShape(CLOSE);
}

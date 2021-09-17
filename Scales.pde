void setup() {
  size(500, 500);
  noLoop(); //stops the draw() function from repeating


}
void draw() {
    background(0,0,0);
  //loop scale background
  for(float y = 500; y >= 390; y-=8){
    for(float x = 900; x >= 0; x-=25)
        scale(x,y);
  }

  //draw dragon
  body();
  //head
  stroke(0,0,0);
  fill(250,160,50, 200);
  beginShape();
  ellipse(300,150,80,80);
  bezier(260,150, 270,230, 330,230, 340,150);
  endShape();
  horns();

}


void scale(float x, float y) {
  //color
  float d = 10;
  for(float j = 100; j < 140; j+=5.5){
    for(float i = 250; i > 160; i-=2.5){
      stroke(250,220,50);
      fill(255,i,j);
      beginShape();
      bezier(15 + x + d, 10 + y + d,  41.5 + x + d, 25 + y + d,  41.5 + x + d, 31.5 + y + d,  20 + x + d, 26.5 + y + d);
      d-=13;
      endShape();
    }
  }
}
  
void horns(){
 beginShape();
   bezier(271,120, 220,70, 230,83, 267,130);
   bezier(324,120, 370,70, 360,83, 330,130);
 endShape();
}
 
 
void body(){
stroke(0,0,0);
  beginShape();
  noFill();
  //1 top curve
  bezier(300,110, 270,80,  190,50,  110,120);
  //quad top
  noStroke();
  quad(110,120, 300,110, 260,150, 110,160);
  //2 left top curve
  stroke(0,0,0);
  bezier(110,120, 38,190,  80,250,  110,270);
  //quad top left
  noStroke();
  quad(110,160, 140,155, 150, 270, 110,270);
  //3 top bottom curve
  stroke(0,0,0);
  bezier(110,270, 180,320, 290,270, 300,268);
  //quad top middle 3
  noStroke();  
  quad(110,270, 146,241, 320,206, 370,269);
  //quad 4 middle left
  quad(360,248, 380,248, 420,330, 340,345);
  //6 bottom top armpit curve
  stroke(0,0,0);
  bezier(200,310, 180,305, 150,290, 100,320);
  //quad bottom top 5
  noStroke();
  quad(300,347, 200,310, 100,320, 100,372);
  //7 bottom left curve
  stroke(0,0,0);
  bezier(100,320, 45,360, 90,410, 130,430);
  //quad second-to-last
  noStroke();
  quad(100,370, 120,360, 130,400, 120,400);
  //last quad I hope
  quad(130,430, 170,430, 130,400, 120,400);
  //8 bottom-most curve
  stroke(0,0,0);
  bezier(130,430, 180,460, 250,440, 300,430);
  
  //inner line
  //1 top inner curve

  bezier(260,150, 230,120, 170,120, 140,160);
  //2 top left armpit curve
  bezier(140,160, 120,190, 120,220, 150,240);
  //3 top bottom armpit curve
  bezier(150,240, 190,260, 290,205, 320,205);

  //4 right-most curve
  bezier(320,205, 390,198, 450,255, 420,330);
  //5 bottom bottom curve
  bezier(420,330, 380,400, 300,410, 200,360);

  //6 bottom left armpit curve
  bezier(200,360, 150,340, 100,360, 130,400);
  //7 bottom-most upper curve
  bezier(130,400, 150,430, 200,450, 300,430);
  //4 bottom right armpit curve
  bezier(300,268, 360,248, 410,305, 340,345);
  //5 outer bottom bottom armpit curve
  bezier(340,345, 290,360, 260,335, 200,310);
  //bottom dumb red speck fix
  noStroke();
  quad(300,268, 340,345, 340,345, 200,310);
  endShape();

}

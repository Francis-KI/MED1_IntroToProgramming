Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;

void setup() {
  size(1600,1200);
 
  
  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  myFlower1 = new Flower(_r1,_petals,_x,_y,_pc);
  myFlower2 = new Flower(_r1*2,_petals,_x-300,_y,_pc);
  myFlower3 = new Flower(_r1/2,_petals,_x+250,_y,_pc);

}

void draw(){
   background(#43AF76);
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();
  //noLoop();
  myFlower1.move();//calling the method move in FlowerClass
  myFlower1.bounce(); //calling the method bounce in FlowerClass
  myFlower2.move();
  myFlower2.bounce();
  myFlower3.move();
  myFlower3.bounce();
}

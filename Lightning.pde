void setup(){
  size(800,800);
  background(255,255,255);
  strokeWeight(10);
  frameRate(60);
}

int startX = 50;
int startY = 400;
int endX = 0;
int endY = 400;

void draw(){
  stroke((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*200));
 
  while(endX <= mouseX){
    endX = startX + (int)(Math.random() * 11);
    endY = startY + (int)(Math.random() * 20-10);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    
  }
} 

void mousePressed(){
  if(mousePressed){
    startX = 0;
    startY = 400;
    endX = 0;
    endY = 400;
  }
  System.out.println(startX+ "," + startY + "," + endX + "," + endY);
  
}

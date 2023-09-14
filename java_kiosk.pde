Screen main = null;
Screen menu1 = null; Screen menu2 = null;
Screen coffee1 = null; Screen coffee2 = null; Screen coffee3 = null;
Screen juice1 = null; Screen juice2 = null; Screen juice3 = null;
Screen buy = null; Screen result = null;
Screen now_screen = null;

void setup(){
  size(480, 720);
  PFont font;
  font = createFont("Gulim",32);
  textFont(font);
  main = new MainScreen();
  menu1 = new menuScreen1(); menu2 = new menuScreen2();
  coffee1 = new coffee1Option(); coffee2 = new coffee2Option();  coffee3 = new coffee3Option();
  juice1 = new juice1Option(); juice2 = new juice2Option();  juice3 = new juice3Option();
  buy = new buyScreen(); result = new resultScreen(); 
  now_screen = main;
  now_screen.draw();
  
  noLoop();
}

void mouseClicked()
{  //<>//
  //println(mouseX,mouseY);
  now_screen.onClick(mouseX,mouseY);
  loop();
}


void draw(){
  now_screen.draw();
}

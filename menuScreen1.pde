//커피 메뉴 클래스
class menuScreen1 extends Screen{ 
  
  menuScreen1(){
    super(0,0,width,height,color(255));
  }
  //Label lbRefund ;
  
  void createObj(){
    addObj(new Rect(10,10,470,710,color(255,170,95),color(255,170,95)));
    addObj(new Label(30,30,450,120,color(255,137,137),"카페 KIOSK",60));
    addObj(new Button(30,140,230,200,color(0,106,255),"커피",30,"커피"));
    addObj(new Button(250,140,450,200,color(255,248,118),"음료",30,"음료"));
    addObj(new Rect(30,220,450,520,color(255,255,255),color(0,0,0)));
    addObj(new Button(60,250,160,350,color(150,200,200),"커피1",30,"커피1"));
    addObj(new Label(60,350,160,380,color(150,200,200),"500",30));
    addObj(new Button(190,250,290,350,color(150,80,200),"커피2",30,"커피2"));
    addObj(new Label(190,350,290,380,color(150,80,200),"600",30)); 
    addObj(new Button(320,250,420,350,color(150,100,250),"커피3",30,"커피3"));
    addObj(new Label(320,350,420,380,color(150,100,250),"400",30));
    addObj(new Label(30,540,230,570,color(255,255,255),"구매목록",20));
    addObj(lbRefund1 = new Label(30,570,230,665,color(255,255,255),"",10));
    addObj(lbRefund = new Label(30,665,230,690,color(255,255,255),"",20));
    addObj(new Button(250,540,450,605,color(140,255,118),"전체취소",30,"전체취소"));
    addObj(new Button(250,625,450,690,color(255,118,118),"구매",30,"구매"));
  }
  
  void clickEvent(String id){
    println(id);
    switch(id){   
    case "음료":
      now_screen = menu2;
      break;
    case "전체취소":
      money = 0;
      total = 0;
      str = "";
      lbRefund1.setString(str);
      lbRefund.setString(money+"원");
      now_screen = main;
      break; 
    case "구매":
      now_screen = buy;
      break;
    case "커피1": 
      now_screen = coffee1;
      break;
    case "커피2":
      now_screen = coffee2;
      break; 
    case "커피3":
      now_screen = coffee3;
      break;
    } 
  }
  void draw(){
    //total+=money;
    super.draw();
    lbRefund.draw();
    lbRefund.setString("총액 "+total+"원");
    lbRefund1.draw();
    lbRefund1.setString(str);
  }
}

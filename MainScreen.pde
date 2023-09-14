public class MainScreen extends Screen{ 
  
  MainScreen(){
    super(0,0,width,height,color(255));
  }
  
  //Label lbRefund ;
  
  void createObj(){
    addObj(new Rect(10,10,470,710,color(255,170,95),color(255,170,95)));
    addObj(new Label(30,30,450,120,color(255,137,137),"카페 KIOSK",60));
    addObj(new Button(30,140,230,200,color(255,248,118),"커피",30,"커피"));
    addObj(new Button(250,140,450,200,color(255,248,118),"음료",30,"음료"));
    addObj(new Rect(30,220,450,520,color(255,255,255),color(0,0,0)));
    addObj(new Label(30,540,230,570,color(255,255,255),"구매목록",20));
    addObj(lbRefund1 = new Label(30,570,230,665,color(255,255,255),"",10));
    addObj(lbRefund = new Label(30,665,230,690,color(255,255,255),"",20));
    addObj(new Button(250,540,450,605,color(140,255,118),"전체취소",30,"전체취소"));
    addObj(new Button(250,625,450,690,color(255,118,118),"구매",30,"구매"));
  }
  
  void clickEvent(String id){
    println(id);
    switch(id){
    case "커피":
      now_screen = menu1;
      break;    
    case "음료":
      now_screen = menu2;
      break;
    case "전체취소":
      money = 0;
      total = 0;
      str = "";
      lbRefund1.setString(str);
      now_screen = main;
      break; 
    case "구매":   
      now_screen = buy;
      break; 
    } 
  }
  void draw(){
    //total +=money;
    super.draw();
    lbRefund.draw();
    lbRefund.setString("총액 "+total+"원");
    lbRefund1.draw();
    lbRefund1.setString(str);
  }
}

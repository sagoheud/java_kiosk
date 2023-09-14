//결제 클래스
class buyScreen extends Screen{ 
  buyScreen(){
    super(0,0,width,height,color(255));
  }
  
  Label lbRefund2;
  Button btnRefund;

  void createObj(){
    addObj(new Rect(10,10,470,710,color(255,170,95),color(255,170,95)));
    addObj(new Label(30,30,450,120,color(255,137,137),"카페 KIOSK",60));
    addObj(new Rect(30,140,450,690,color(255,255,255),color(0,0,0)));
    addObj(lbRefund = new Label(60,200,420,280,color(255,137,137),"",30));
    addObj(lbRefund2 = new Label(60,300,420,380,color(255,137,137),"투입금액: "+0+"원",30));
    addObj(new Button(100,460,190,545,color(203,212,228),"100원\n투입",30,"100원\n투입"));
    addObj(new Button(290,460,380,545,color(203,212,228),"500원\n투입",30,"500원\n투입"));
    addObj(new Button(60,580,230,645,color(140,255,118),"돌아가기",30,"돌아가기"));
    addObj(btnRefund = new Button(250,580,420,645,color(200,200,200),"결제",30,"결제"));
  }

  void clickEvent(String id){
    println(id);
    switch(id){
    case "100원\n투입":
      money += 100;
      lbRefund2.setString("투입금액: "+money+"원");
      if(money>=total){
        btnRefund.setColor(color(0,0,250));
      }
      break;
    case "500원\n투입":
      money += 500;
      lbRefund2.setString("투입금액: "+money+"원");
      if(money>=total){
        btnRefund.setColor(color(0,0,250));
      }
      break;
    case "돌아가기":
      now_screen = menu1;
      break;
    case "결제":
      if(total>0){
        if(money>=total){
          money = 0;
          total = 0;
          lbRefund2.setString("투입금액: "+money+"원");
          now_screen = result;
          btnRefund.setColor(color(255,118,118));
          break;
        } 
      }      
    } 
  }
  void draw(){
    super.draw();
    lbRefund.draw();
    lbRefund.setString("결제금액: "+total+"원");
  }
}

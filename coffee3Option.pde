//커피3 옵션 클래스
class coffee3Option extends Screen{
  
  coffee3Option(){
    super(0,0,width,height,color(255));  
  }
  
  //Label lbRefund;

  void createObj(){
    addObj(new Rect(10,10,470,710,color(255,170,95),color(255,170,95)));
    addObj(new Label(30,30,450,120,color(255,137,137),"카페 KIOSK",60));
    addObj(new Rect(30,140,450,520,color(255,255,255),color(0,0,0)));
    addObj(new Label(60,200,210,350,color(150,100,250),"커피3\n그림\n400",30));
    addObj(new Button(240,180,400,240,color(150,150,150),"시럽추가\n100",20,"시럽추가"));
    addObj(new Button(240,250,400,310,color(150,150,150),"사이즈업\n200",20,"사이즈업"));
    addObj(new Button(240,320,400,380,color(150,150,150),"옵션제거\n0",20,"옵션제거"));
    addObj(new Button(60,420,220,480,color(255,248,118),"확인",20,"확인"));
    addObj(new Button(260,420,420,480,color(255,248,118),"취소",20,"취소"));
    addObj(new Label(30,540,230,570,color(255,255,255),"구매목록",20));
    addObj(lbRefund1 = new Label(30,570,230,665,color(255,255,255),"",10));
    addObj(lbRefund = new Label(30,665,230,690,color(255,255,255),"커피3 "+money+"원",20));
    addObj(new Button(250,540,450,605,color(140,255,118),"전체취소",30,"전체취소"));
    addObj(new Button(250,625,450,690,color(255,118,118),"구매",30,"구매"));
  }

  private int syrupCount = 1;
  private int sizeUpCount = 1;
  
  void clickEvent(String id){
    println(id);
    switch(id){
    case "시럽추가":
      if (syrupCount > 0) {  
        money += 100;
        lbRefund.setString("커피3 "+money+"원");
        syrupCount--;
      }
      break;    
    case "사이즈업":
      if (sizeUpCount > 0) {
        money += 200;
        lbRefund.setString("커피3 "+money+"원");
        sizeUpCount--;
      }
      break;
    case "옵션제거":
      if(money>0){
        if (syrupCount == 0) { 
          syrupCount++;
          money -= 100;
          lbRefund.setString("커피3 "+money+"원");
        }
        if (sizeUpCount==0) { 
          sizeUpCount++;
          money -= 200;
          lbRefund.setString("커피3 "+money+"원");
        }
      }
      break;
    case "확인":
      money += 400;
      total +=money;
      str += "커피3 ";
      count += 3;
      if (count>=18){
        count = 0;
        str += "\n";
      }
      money = 0;
      syrupCount = 1;
      sizeUpCount = 1;
      lbRefund.setString("커피3 "+money+"원");
      now_screen = menu1;
      break;
    case "취소":
      money = 0;
      syrupCount = 1;
      sizeUpCount = 1;
      lbRefund.setString("커피3 "+money+"원");
      now_screen = menu1;
      break;
    case "전체취소":
      money = 0;
      total = 0;
      str = "";
      lbRefund1.setString(str);
      syrupCount = 1;
      sizeUpCount = 1;
      lbRefund.setString(money+"원");
      now_screen = main;
      break; 
    case "구매":
      now_screen = buy;
      break;
    }
  }
  void draw(){
    super.draw();
    lbRefund.draw();
    lbRefund1.draw();
  }
}

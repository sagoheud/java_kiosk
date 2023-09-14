//결제완료 클래스
class resultScreen extends Screen{ 
  
  resultScreen(){
    super(0,0,width,height,color(255));  
  }
  
  //Label lbRefund ;

  void createObj(){
    addObj(new Rect(10,10,470,710,color(255,170,95),color(255,170,95)));
    addObj(new Label(30,30,450,120,color(255,137,137),"카페 KIOSK",60));
    addObj(new Rect(30,140,450,690,color(255,255,255),color(0,0,0)));
    addObj(new Label(50,220,430,440,color(255,137,137),"결제가\n완료되었습니다.",40));
    addObj(new Button(60,580,420,645,color(140,255,118),"확인",30,"확인"));
  }

  void clickEvent(String id){
    println(id);
    switch(id){
    case "확인":
      str = "";
      money = 0;
      now_screen = main;
      break;
    } 
  }

}

public static int money=0;
public static int total=0;
public static String str="";
public static int count=0;
class Screen extends Rect{
  
  ArrayList<DrawObj>objs = new ArrayList<DrawObj>();
  Screen(int x1, int  y1, int  x2, int  y2, color bg_col){
    super(x1, y1, x2, y2, bg_col, bg_col);
    createObj();
  }
  
  Label lbRefund ;
  Label lbRefund1 ;
  
  void createObj(){
    // objs.add( ---- );
  }
  
  void addObj(DrawObj o){
    objs.add(o);
  }
  
  void clickEvent(String id){
  }
  
  void onClick(int x, int y){
    for( DrawObj o : objs ){
      if( o instanceof Button ){
        Button b = (Button)o;
        if(b.isIn(x,y)){
          clickEvent(b.getId());
          break;
        }
      } 
    } 
  }
  
  void draw(){
    super.draw();
    for( DrawObj o : objs ){
      o.draw();
    }
  }
}

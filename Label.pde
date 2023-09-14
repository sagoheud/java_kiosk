class Label extends Rect{
  Text text;
  
  Label(int x1, int  y1, int  x2, int  y2, color bg_col, String str, int size){
    super(x1, y1, x2, y2, bg_col, color(0));
    text = new Text(x1,y1,x2,y2,color(0),str,size);
  }  
  
  void draw(){
    super.draw();
    text.draw();
  }
  
  void setString(String str){
    text.setString(str);
  }
}

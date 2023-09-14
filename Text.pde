  class Text extends DrawObj{
  String str;
  int size;

  Text(int x1,int y1,int x2,int y2,color col,String str,int size){
    super(x1,y1,x2,y2,col);
    this.str=str; this.size=size; this.col=col;
  }

  void draw(){
    textAlign(CENTER,CENTER);
    textSize(size);
    fill(col);
    text(str,getCenterX(),getCenterY());
  }

  void setString(String str){
    this.str=str;
  }
}

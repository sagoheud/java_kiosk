class Line extends DrawObj{

  Line(int x1, int  y1, int  x2, int  y2, color line_col){
    super(x1, y1, x2, y2, line_col);   
  }
  
  void draw(){ 
    stroke(col);
    line(x1, y1, x2, y2);
  } 
}

public class Rect extends DrawObj{
  color line_col;
  
  Rect(int x1, int  y1, int  x2, int  y2, color bg_col, color line_col){
    super(x1, y1, x2, y2, bg_col);
    this.line_col = line_col;
  }
  
  void draw(){
    fill(col);
    stroke(line_col);
    rect(x1, y1, getWidth(), getHeight());
  }  
}

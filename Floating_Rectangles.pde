float rot = 0;
 
void setup() {
  size(600, 600);
  smooth(8);
  noStroke();
}
 
void draw_rot_rect(float x, float y, float col, float r) {
  translate(x, y);
  fill(col);
  rotate(radians(r));
  rect(0, 0, 100, 100);
  resetMatrix();
}
 
void draw() {
  // make the fade effect
  fill(230,15);
  rect(0,0,width,height);
   
  // draw a grid of rectangles 10*10
  for (int i = 0; i < 10; i = i + 1) {
    for (int j = 0; j < 10; j = j + 1) {
      draw_rot_rect(75+i*50, 75+j*50, 5+i*5, rot + 15*(i+j));
    }
  }
   
  // make the animation possible
  rot = rot + 1;
   
}
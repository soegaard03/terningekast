int antal1, antal2, antal3, antal4, antal5, antal6;
int r = 1;
PFont font1;

void lavterningekast() {
  antal1 = 0;
  antal2 = 0;
  antal3 = 0;
  antal4 = 0;
  antal5 = 0;
  antal6 = 0;

  clear();
  background(241, 156, 187);
 //terninge kast random
  for (int i = 0; i < 1000; i++) {
    r = int(random(1, 7));
    if (r == 1) {
      antal1 ++;
    } else if (r == 2) {
      antal2 ++;
    } else if (r == 3) {
      antal3 ++;
    } else if (r == 4) {
      antal4 ++;
    } else if (r == 5) {
      antal5 ++;
    } else if (r == 6) {
      antal6 ++;
    }
  }
//print
  println("1'ere:" + antal1);
  println("2'ere:" + antal2);
  println("3'ere:" + antal3);
  println("4'ere:" + antal4);
  println("5'ere:" + antal5);
  println("6'ere:" + antal6);

// søljediagrammet
  fill(255, 242, 179);
  rect(0, 500-antal1, 100, antal1);
  fill(255, 247, 3);
  rect(100, 500-antal2, 100, antal2);
  fill(241, 255, 51);
  rect(200, 500-antal3, 100, antal3);
  fill(255, 255, 71);
  rect(300, 500-antal4, 100, antal4);
  fill(255, 218, 33);
  rect(400, 500-antal5, 100, antal5);
  fill(255, 191, 0);
  rect(500, 500-antal6, 100, antal6);

// terninge nr
  textFont(font1, 32);
  fill(0, 102, 153);
  text("1", 40, 300); 
  fill(0, 102, 153);
  text("2", 140, 300);
  fill(0, 102, 153);
  text("3", 240, 300); 
  fill(0, 102, 153);
  text("4", 340, 300); 
  fill(0, 102, 153);
  text("5", 440, 300); 
  fill(0, 102, 153);
  text("6", 540, 300);

// mathildes terninge kast
  fill(255, 0, 170);
  textFont(font1, 35);
  text("MATHILDES TERNINGE KAST", 100, 100);
  
//terning for sjov
  fill(255,255,255);
  rect(430, 150, 55, 55, 7);
  fill(0,0,0);
  circle(440, 160, 10);
  circle(458, 178, 10);
  circle(475, 195, 10);
}

void setup() {
  size (600, 500);
  font1 = loadFont("Athelas-Italic-48.vlw");
  lavterningekast();
}

void draw() {
}

void mousePressed() {
  lavterningekast();
}

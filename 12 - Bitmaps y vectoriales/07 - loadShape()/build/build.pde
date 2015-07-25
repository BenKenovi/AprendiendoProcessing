/* 

Aprendiendo Processing - 

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/

PShape vec, capa1, capa2, capa3, capa4;
color[] paleta = { #C74029, #FAE8CD, #128085, #385052, #F0AD44};


void setup() {
  size(400, 400);
  background(#202020);
  vec = loadShape("../../../data/vec.svg");

  int count = vec.getChildCount();
  println(count);

  capa1 = vec.getChild(0);
  capa1.disableStyle();

  capa2 = vec.getChild(1);
  capa2.disableStyle();

  capa3 = vec.getChild(2);
  capa3.disableStyle();

  capa4 = vec.getChild(3);
  capa4.disableStyle();

  noStroke();
  stroke(#202020);

  //shape(vec, 0, 0, width, height);
  fill(paleta[int(random (paleta.length))]);
  shape(capa1, 0, 0);

  fill(paleta[int(random (paleta.length))]);
  shape(capa2, 0, 0);

  fill(paleta[int(random (paleta.length))]);
  shape(capa3, 0, 0);

  fill(paleta[int(random (paleta.length))]);
  shape(capa4, 0, 0);
}

void draw() {
  

  noLoop();

}
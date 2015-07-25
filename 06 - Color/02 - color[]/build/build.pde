/* 

Color en Processing 

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/

float x = 0;
color[] paleta = { #C74029, #FAE8CD, #128085, #385052, #F0AD44};

void setup(){
	size(500, 500);
	rectMode(CENTER);
	smooth();
	noStroke();
	background(paleta[1]);
}

void draw(){
	while (x<width) {
	  float y=0;
	  while (y<height) {
	    float w=random(5, 25);
	    float h=random(5, 25);
	    fill(50, 50);
	    rect(x+12, y+12, w, h);
	    fill(paleta[int(random (5))]);
	    rect(x+10, y+10, w, h);
	    y+=15;
	  }
	  x+=15;
	}

}
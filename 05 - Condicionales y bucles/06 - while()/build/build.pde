/* 

Aprendiendo Processing - while()

-

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/


//VARIABLES GLOBALES
float rotation;
int i = 1;

//SETUP
void setup() {
	size(400,400);
	background(#202020);
	stroke(255);
	fill(255,33);
	rectMode(CENTER);

	while (i < 400) {
		pushMatrix();
		translate(width*0.5, height*0.5);
		rotate(TWO_PI/i);
		rect(0, 0, i, i);
		popMatrix();
		i+=25;
	}
}

//LOOP
void draw() {
	
}
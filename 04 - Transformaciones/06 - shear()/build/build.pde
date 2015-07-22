/* 

Aprendiendo Processing / shear()

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/


//VARIABLES GLOBALES
float rotation;

//SETUP
void setup() {
	size(400,400);
	background(#202020);
	noStroke();
	fill(255);
	rectMode(CENTER);
}

//LOOP
void draw() {
	background(#202020);
	
	translate(width/2, height/2);
	shearY(sin(frameCount*0.05)*QUARTER_PI/2);
	shearX(cos(frameCount*0.05)*QUARTER_PI/2);

	pushMatrix();
	shearX(QUARTER_PI);
	rect(0, 0, 20, 200);
	popMatrix();

	pushMatrix();
	//translate(width/2, height/2);
	shearX(-QUARTER_PI);
	rect(0, 0, 20, 200);
	popMatrix();

}
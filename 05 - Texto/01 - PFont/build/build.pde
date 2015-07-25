/* 

Título del sketch

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/


//VARIABLES GLOBALES

//SETUP
void setup() {
	size(400, 400);
	background(#202020);
	noStroke();
	fill(255);
	smooth();
	PFont miFuente;
	miFuente = loadFont("ACaslonPro-SemiboldItalic-48.vlw");
	textFont(miFuente, 48);
	text("Processing", width/2, height*0.25);
	textAlign(CENTER, BOTTOM); // CENTER, LEFT, RIGHT, BOTTOM, CENTER, TOP
	text("Processing", width/2, height*0.5);
	
}

//LOOP
void draw() {

}
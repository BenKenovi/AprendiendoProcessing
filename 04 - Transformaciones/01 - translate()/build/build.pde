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
	size(400,200);
	background(#202020);
	noFill();
	stroke(255);
	rectMode(CENTER);
}

//LOOP
void draw() {
	//Primer cuadrado
	translate(width*0.25, height*0.5);
	rect(0, 0, 75, 75);
	//Segundo cuadrado
	translate(width*0.25, 0);
	rect(0, 0, 75, 75);
	//Tercer cuadrado
	translate(width*0.25, 0);
	rect(0, 0, 75, 75);
}
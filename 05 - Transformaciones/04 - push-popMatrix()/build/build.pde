/* 

Título del sketch

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
	noFill();
	stroke(255);
	rectMode(CENTER);
}

//LOOP
void draw() {
	background(#202020);
	fill(255,33);

	rotation = sin(frameCount*0.05)*QUARTER_PI;
	//Primera fila
	//Primer cuadrado
	pushMatrix();
	translate(width*0.5, height*0.5);
	rotate(rotation);
	rect(0, 0, 100, 100);
	popMatrix();
	//Segundo cuadrado
	pushMatrix();
	translate(width*0.5, height*0.5);
	rotate(lerp (rotation*0.75, rotation, 0.1));
	rect(0, 0, 150, 150);
	popMatrix();
	//Tercer cuadrado
	pushMatrix();
	translate(width*0.5, height*0.5);
	rotate(lerp (rotation*0.5, rotation*0.75, 0.1));
	rect(0, 0, 200, 200);
	popMatrix();

}
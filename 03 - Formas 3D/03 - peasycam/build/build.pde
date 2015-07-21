/* 

Aprendiendo Processing - sphere()

- Dibuja varias esferas
- Número de facetas determinado por pòsición del mouse

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/

//LIBRERÍAS
import peasy.*;

PeasyCam cam;


//VARIABLES GLOBALES

//SETUP
void setup() {
	size(512, 512, P3D);
	stroke(#202020,25);
	fill(#ffffff);
	
	smooth();

	cam = new PeasyCam(this,100);
	cam.setMinimumDistance(100);
	cam.setMaximumDistance(250);
}

//LOOP
void draw() {
	lights();
	background(#202020);

	//Sol 
	pushMatrix();
	rotateY(frameCount*0.005);
	sphere(25);
	popMatrix();

	//Planeta
	rotate(frameCount*0.05);
	pushMatrix();
	translate(50,0,0);
	sphere(5);
	popMatrix();


}
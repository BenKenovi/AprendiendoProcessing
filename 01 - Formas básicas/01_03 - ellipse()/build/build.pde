/* 

Formas básicas en Processing / ellipse()

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/

void setup() {
	size(400, 400); //tamaño de la ventana. (ancho, alto)
	

}

void draw() {
	background(#202020);
	//Circunferencia 1
	stroke(255);
	strokeWeight(1);
	noFill();
	ellipse(width*0.25, height*0.25, 100, 100);
	//Circunferencia 2
	stroke(#00FFFF,50);
	strokeWeight(8);
	fill(255,50);
	ellipse(width*0.75, height*0.25, 100, 100);
	//Circunferencia 3
	stroke(255,50);
	strokeWeight(1);
	noFill();
	ellipse(width*0.25, height*0.75, 150, 75);
	fill(255);
	ellipse(width*0.25+75*sin(frameCount*0.05), height*0.75+37.5*cos(frameCount*0.05), 4, 4);
	//Circunferencia 4
	stroke(255);
	strokeWeight(1);
	noFill();
	ellipse(width*0.75, height*0.75, 100, 100*sin(frameCount*0.05));
}
	
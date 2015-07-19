/* 

Formas básicas en Processing / line()

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/

void setup() {
	size(500, 150); //tamaño de la ventana. (ancho, alto)
	

}

void draw() {
	background(#202020);
	//Línea 1
	stroke(255);
	line(width*0.2-20, height*0.5-20, width*0.2+20, height*0.5+20);
	//Línea 2
	line(width*0.4-20, height*0.5-20, width*0.4+20, height*0.5+20);
	line(width*0.4+20, height*0.5-20, width*0.4-20, height*0.5+20);
	//Línea 3
	line(width*0.6-20, height*0.5, width*0.6+20, height*0.5);
	line(width*0.6, height*0.5-20, width*0.6, height*0.5+20);
	//Línea 4
	line(
		width*0.8+25*sin(frameCount*0.05), 
		height*0.5+25*cos(frameCount*0.05), 
		width*0.8-25*sin(frameCount*0.05), 
		height*0.5-25*cos(frameCount*0.05)
		);
}
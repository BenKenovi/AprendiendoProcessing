/* 

Formas básicas en Processing / quad()

- Dibujar un triángulo equilátero 
definiendo la posición de sus vértices a partir del centro

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/

int radio = 100;

void setup() {
	size(400, 400); //tamaño de la ventana. (ancho, alto)
	noFill();
	stroke(255);

}

void draw() {
	background(#202020);
	//Ejemplo 1: triángulo equilátero
	triangle(
			width/2, //coords esquina 1
			height/2-radio,
			width/2+sqrt(radio*radio-radio/2*radio/2), //coords esquina 2
			height/2+radio/2,
			width/2-sqrt(radio*radio-radio/2*radio/2), //coords esquina 3
			height/2+radio/2

		);
	
}
	
/* 

Aprendiendo Processing - switch()

-

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/


//VARIABLES GLOBALES
int contador = 0;

//SETUP
void setup() {
	size(400,400);
	background(#202020);
	stroke(255);
	fill(#202020);
	rectMode(CENTER);
}

//LOOP
void draw() {
	if (frameCount % 100 == 0) {
	 	contador++;
	 } 
	
	switch (contador) {
		case 0 :
			rect(width/2, height/2, 300, 300);			
		break;

		case 1 :
			background(#202020);
			ellipse(width/2, height/2, 300, 300);
		break;

		case 2 :
			contador = 0;
		break;

		default :
			rect(width/2, height/2, 300, 300);
		break;	


		
	}
}
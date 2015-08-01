/* 

Aprendiendo Processing - Ejemplo 06

- 

José Vicente Araújo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/


//LIBRERÍAS
//VARIABLES GLOBALES
int dist = 50;

String[] tiles = { "01.svg", "02.svg", "03.svg", "04.svg", "05.svg", "06.svg", "07.svg" };

color[] paleta = { #C74029, #FAE8CD, #128085, #385052, #F0AD44};

int[] escala = {1, 2, 4};

void setup() {
  size(500, 500);
  background(#202020);
  noFill();
  noStroke();
  //shapeMode(CENTER);
  frameRate(0.5);
}

void draw(){
	background(#202020);
	for (int i = 0; i < width; i+=dist) {
		for (int ii = 0; ii < height; ii+=dist) {
			fill(paleta[int(random (paleta.length))]);
			PShape tile;
			tile = loadShape(
					tiles[int(random (paleta.length+1))]
				);
			tile.disableStyle();
			shape(tile, i, ii, 1.75, 1.75);
		}
	}

	for (int i = 0; i < width; i+=dist) {
		for (int ii = 0; ii < height; ii+=dist) {
			fill(paleta[int(random (paleta.length))]);
			PShape tile;
			tile = loadShape(
					tiles[int(random (paleta.length+1))]
				);
			tile.disableStyle();
			translate(i, ii);
			rotate(int(random(4))*HALF_PI);
			int sz = escala[int(random(2))];
			shape(tile, 0, 0, dist*sz, dist*sz);
			resetMatrix();
		}
	}
	
}
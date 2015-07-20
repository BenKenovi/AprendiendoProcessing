import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class build extends PApplet {

/* 

Aprendiendo Processing / Condicionales - if()

Jos\u00e9 Vicente Ara\u00fajo
http://dunadigital.com 
svcnt@dunadigital.com
junio 2015
Processing 2.2.1

*/


//VARIABLES GLOBALES
float ellipse1x, ellipse1y, ellipse2x, ellipse2y;

//SETUP
public void setup() {
	size(512, 512);
	//background(#202020);
	noFill();
	stroke(255);
}

//LOOP
public void draw() {
	fill(0xff202020, 10);
	rect(-5, -5, width+10, height+10);

	ellipse1x = width/2 + sin(frameCount*0.06f)*sin(frameCount*0.009f)*250;
	ellipse1y = height/2 + cos(frameCount*0.06f)*sin(frameCount*0.009f)*250;

	ellipse2x = width/2 + sin(frameCount*-0.05f)*sin(frameCount*0.0005f)*225;
	ellipse2y = height/2 + cos(frameCount*-0.05f)*sin(frameCount*0.0005f)*225;

	ellipse(ellipse1x, ellipse1y, 5, 5);
	ellipse(ellipse2x, ellipse2y, 5, 5);

	if (dist(ellipse1x, ellipse1y, ellipse2x, ellipse2y) < 150) {
		stroke(0xff0000ff);
		line(ellipse1x, ellipse1y, ellipse2x, ellipse2y);

	} else if (dist(ellipse1x, ellipse1y, ellipse2x, ellipse2y) > 250) {
		strokeWeight(5);
		
	} else {
		stroke(255);
		strokeWeight(1);
	}
	
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "build" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

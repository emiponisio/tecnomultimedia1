PImage img; // Variable para almacenar la imagen

void setup() {
  size(800, 400);
  
  
 img = loadImage("foto (1).jpg");
}

void draw() {
  



  background(255);
  image(img, width - img.width, 0);

  
 //pelo detrás de cabeza 
 
    beginShape();
    stroke(0);
    fill(150,0,0);
  vertex(124, 134);   // Primer punto extremo
  vertex(69, 296);  // Primer punto de control
  vertex(341, 278);  // Segundo punto de control
  vertex(279, 148);  // Segundo punto extremo
  endShape(CLOSE);   // Cerrar el polígono

  
  // Cabeza
  stroke(0);
  fill(255, 204, 153);
  ellipse(200, 200, 200, 200);
 
// Ojos
  fill(0, 90, 0);
  stroke(0);
  ellipse(160, 180, 30, 30);
  ellipse(240, 180, 30, 30);

  // Pupilas
  fill(0);
  ellipse(160, 180, 15, 15);
  ellipse(240, 180, 15, 15);

  // Brillo en las pupilas
  fill(255);
  ellipse(163, 173, 12, 10);
  ellipse(243, 173, 12, 10);
  
  // Boca
  
     stroke(0);
  fill(180,0,0);
  beginShape();
    curveVertex(72, 153);
    curveVertex(168, 242);
    curveVertex(234, 246);
    curveVertex(300, 143);
  endShape();
 
 
// Oreja izquierda
  fill(255, 204, 153); // 
  stroke(255, 204, 153);
  ellipse(100, 200, 30, 50); // 
  
  
  // Oreja derecha
  fill(255, 204, 153); // 
  stroke(255, 204, 153);
  ellipse(295, 200, 30, 50); // 


  
  //pelo
  
     stroke(0);
  fill(150,0,0);
  beginShape();
    curveVertex(391, 323);
    curveVertex(201, 101);
    curveVertex(100, 220);
    curveVertex(350, 383);
  endShape();

       stroke(0);
  fill(150,0,0);
  beginShape();
    curveVertex(100, 370);
    curveVertex(198, 101);
    curveVertex(301, 210);
    curveVertex(24, 320);
  endShape();
  
  
  //nariz
  line(205, 190,202, 216);
 line(188, 215,202, 217);
 
 // Cejas
noFill();
stroke(2);
beginShape();
curveVertex(140, 160); // Punto inicial izquierdo
curveVertex(140, 160); // Primer punto de control izquierdo
curveVertex(160, 150); // Segundo punto de control izquierdo
curveVertex(180, 150); // Punto final izquierdo
endShape();

beginShape();
curveVertex(220, 150); // Punto inicial derecho
curveVertex(220, 150); // Primer punto de control derecho
curveVertex(240, 150); // Segundo punto de control derecho
curveVertex(260, 160); // Punto final derecho
endShape();

}

void mousePressed() {
  // Imprimir la posición del mouse cuando se hace clic
  println("Clic en la posición: (" + mouseX + ", " + mouseY + ")");
}

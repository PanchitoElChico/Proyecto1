class monitosfeos{
 float x,y;
 color c;  
 monitosfeos(){
   x = 0;
   y = 0;
   c = color(255);
 }
  monitosfeos(float x_, float y_, color c_){ //float v_, float z_, float x1_, float y1_, float x2_, float y2_
    x=x_;
    y=y_;
    c=c_;
  }
    void posicion(){
      pushMatrix();
      translate(x,y);
      display(255);     
      //aquí se colocaran los rostros también
      popMatrix();
    }
    //caracteristicas
     void rostro1(){
       stroke(0);
       pushMatrix();
       translate(x,y);
       strokeWeight(4);
       line(70,90,90,100);
       line(90,100,75,110);
       line(130,90,110,100);
       line(110,100,125,108);
       strokeWeight(3);
       triangle(94,122,108,122,101,131);
       popMatrix();
     }
   
      void rostro2(){
        stroke(0);
        pushMatrix();
        translate(x,y);
        strokeWeight(4);
        line(70,100,90,100);
        line(110,100,130,100);
        line(94,125,108,125);
        popMatrix();
      }
    
      void rostro3(){
        stroke(0);
        pushMatrix();
        translate(x,y);
        strokeWeight(4);
        
        ellipseMode(CENTER);
        fill(0);
        ellipse(80,100,15,15);
        ellipse(120,100,15,15);
        line(94,125,108,125);
        line(90,120,94,125);
        line(94,125,90,130);
        line(112,120,108,125);
        line(108,125,112,130);
        fill(255);
        
        ellipse(82,102,10,10);
        ellipse(80,100,5,5);
        ellipse(80,98,9,9);
        
        ellipse(118,102,10,10);
        ellipse(120,98,5,5);
        ellipse(121,98,9,9);
        popMatrix();
      }
      void rostro4(){
      stroke(0);
        pushMatrix();
      translate(x,y);
      strokeWeight(4);  
      ellipseMode(CENTER);
      fill(0);
      ellipse(80,100,15,15);
      ellipse(120,100,15,15);
      line(93,125,109,125);
      strokeWeight(1);
      noFill();
      triangle(101,125,110,125,107,131);
      popMatrix();
     }
  
      void rostro5(){
        stroke(0);
        pushMatrix();
        translate(x,y);
        strokeWeight(4);
        line(70,100,90,100);
        line(110,100,130,100);
        //line(94,125,108,125);
        line(92,126,101,129);
        line(101,129,110,126);
        line(92,122,92,132);
        line(110,122,110,132);
        strokeWeight(0);
        fill(#ff90c8);
        ellipse(70,115,13,9);
        ellipse(132,115,13,9);
        
        popMatrix();
      }
}    
monitosfeos unoh, doh, treh, cuatroh, cinko;    
ventanas win1,win2,win3,win4;

int sel, pantallas, pena;
int select1, select2, turn;
int  vida1, vida2, turno;
PFont f;



     
      void setup(){
    
      background(#b3c7ff);
      size(1200,740);
      f=loadFont("Fipps-Regular-40.vlw");
      unoh = new monitosfeos(80,150,255);
      doh = new monitosfeos(500,150,255);
      treh = new monitosfeos(940,150,255);
      cuatroh = new monitosfeos(300,450,255);
      cinko= new monitosfeos(700,450,255);
      
      win1 = new ventanas(10,10,width-10,height-10);
      win2 = new ventanas(10,10,width-10,height-10);
      win3 = new ventanas(10,10,width-10,height-10);
      win4 = new ventanas(10,10,width-10,height-10);
      pena = 0;
      sel = 1;
      
      select1 = 0;
      select2 = 0;
      turn = 0;
      vida1=100;
      vida2=100;
      turno=0;
     
    }
    
void draw(){
 
 switch(pena){
  case 0: ventana1(); break;
  case 1: ventana2(); break;
  case 2: ventana3(); break;
  case 3: ventana4(); break;
 }
 //println(select1,"\t",select2,"\t",turn, "\t", turno,"\n");
}

void keyPressed(){
 switch(key){
  case '1': pena = 0; break;
  case ' ' : pena = 1; break;
  case '3': pena = 2; break;
  case '4': pena = 3; break;
 }
 
 switch(key){
  case'd':sel=sel+1; break;
  case'a':sel=sel-1; break;
 }
 
 if(sel<=0){
  sel=5; 
 }
 if(sel>=6){
  sel=1; 
 }
 
 
  

 if (key == ENTER){
   switch(turn){
    case 0: turn = 1; break;
    case 1: turn = 2; break;
   }
 }
 
 if(key == 'p'){
 switch (turno){
 case 0: turno = 1; break;
 case 1: turno = 2; break;
 case 2: turno = 3; break;
 }
 }
 if (turno == 3){
 turno=1;  
 }
 
  if (turno == 1){
     if (key=='p'){
    vida1-=random(10);
     }
  }
  
   if (turno == 2){
     if (key=='p'){
    vida2-=random(10);
     }
  }
  
  
 
}
    
    
void display(color c){
 stroke(0);
 strokeWeight(3);
 pushMatrix();
 fill(255);
 ellipse(100,100,100,100);
 //las curvas bezier van "x, y, ax1, ay1, bx2, by2, v, z"
 ellipse(72,185,22,20);
 ellipse(140,186,19,18);
 noFill();
 bezier(70,141,60,155,60,178,65,180);
 line(80,160,78,180);
 bezier(132,140,140,145,150,165,145,178);
 bezier(74,190,70,200,75,215,80,220);
 line(80,220,129,217);
 bezier(128,161,135,175,142,205,129,217);
 line(106,193,107,217);
 line(102,193,109,193);
 popMatrix();
}

class ventanas{
 float x1,y1,x2,y2;
 ventanas(float x1_,float y1_,float x2_,float y2_){
  x1 = x1_;
  y1 = y1_;
  x2 = x2_;
  y2 = y2_;
 }
 void fondo(color fondo,String title){
  fill(fondo);
  strokeWeight(2);
  stroke(240);
  rectMode(CORNERS);
  rect(x1,y1,x2,y2,10);
  fill(0);
  textAlign(CENTER,TOP);
  textFont(f,30);
  text(title,width/2,36);
  fill(255);
 }
 
 void rectangulo(float a, float b){
       noFill();
       stroke(235);
       strokeWeight(4);
       rectMode(CENTER);
       rect(a,b,200,200,5);
     } 
     
     void cocina(){
      //Entre 300-900 y 150+
      float xc=700;
      float yc=220;
      pushMatrix();
      stroke(0);
      strokeWeight(5);
      fill(0);
      ellipse(xc-60,yc+210,2,2);
      ellipse(xc-270,yc+210,2,2);
      noFill();
      rectMode(CORNER);
      rect(xc,yc-20,150,200);
      rect(xc,yc+180,150,150);
      rect(xc-80,yc+300,80,30);
      rect(xc-80,yc+180,80,120);
      rect(xc-330,yc+300,80,30);
      rect(xc-250,yc+180,170,50);
      rect(xc-250,yc+230,170,100);
      rect(xc-330,yc+180,80,120);
      rect(xc-190,yc-20,60,90);
      rect(xc-250,yc+70,170,30);
      rect(xc-240,yc+150,60,30);
      strokeWeight(7);
      line(280,yc+330,930,yc+330);
      line(xc+20,yc+120,xc+20,yc+150);
      line(xc+20,yc+210,xc+20,yc+240);
      line(xc-210,yc+210,xc-120,yc+210);
      line(xc-180,yc+158,xc-140,yc+148);
      line(xc-200,yc+305,xc-180,yc+270);
      line(xc-160,yc+295,xc-140,yc+260);
      popMatrix();
     }
     void pizza(){
      float yp=240;
      pushMatrix();
      stroke(0);
      strokeWeight(6);
      fill(#F5C274);
      triangle(500,yp,750,yp+60,500,yp+300);
      fill(#E8A136);
      quad(500,yp,750,yp+60,710,yp+95,500,yp+45);
      strokeWeight(4);
      fill(#D12828);
      ellipse(540,yp+110,55,55);
      ellipse(620,yp+115,60,60);
      ellipse(542,yp+200,70,70);
      popMatrix();
     }
}

void ventana1(){
 win1.fondo(#F278AB," ");
 win1.pizza();
 pushMatrix();
 frameRate(29);
 fill(random(185),random(150),random(255));

 textSize(45);
 text("LAST SLICE OF PIZZA",600,100);
 fill(#D12828);
 textSize(20);
 text("Presiona la tecla ESPACIO para comenzar",600,630);
 popMatrix();
}


void ventana2(){
 win2.fondo(#A5D7F0,"Selecciona a tu personaje con la tecla ENTER"); 
  unoh.posicion(); 
  unoh.rostro1();
  doh.posicion(); 
  doh.rostro2();
  treh.posicion(); 
  treh.rostro3();
  cuatroh.posicion(); 
  cuatroh.rostro4();
  cinko.posicion(); 
  cinko.rostro5();
  
  switch(sel){
  case 1: win2.rectangulo(180,280); break;
  case 2: win2.rectangulo(600,280); break;
  case 3: win2.rectangulo(1040,280); break;
  case 4: win2.rectangulo(400,580); break;
  case 5: win2.rectangulo(800,580); break;
 }
 
if (key == ENTER && turn == 1){
  switch(sel){
   case 1: select1 = 0; break;
   case 2: select1 = 1; break;
   case 3: select1 = 2; break;
   case 4: select1 = 3; break;
   case 5: select1 = 4; break;
  } 
 }
 if (key == ENTER && turn == 2){
  switch(sel){
   case 1: select2 = 0; break;
   case 2: select2 = 1; break;
   case 3: select2 = 2; break;
   case 4: select2 = 3; break;
   case 5: select2 = 4; break;
  }
 }
 if(turn==0){
  text("Selección de jugador 1",600,100); 
 }
 if(turn==1){
  text("Selección de jugador 2",600,100); 
 }
 
 if (turn == 2){
 ventana3();
  
 }
}

void ventana3(){
 win3.fondo(#B7925B,"Duelo a muerte");
 win3.cocina();
 text("Presiona la tecla 'P' para atacar",600,100);

 switch(select1){
 case 0: pushMatrix(); translate(0,300); unoh.posicion(); unoh.rostro1(); popMatrix(); break;
 case 1: pushMatrix(); translate(-420,300); doh.posicion(); doh.rostro2(); popMatrix(); break;
 case 2: pushMatrix(); translate(-840,300); treh.posicion(); treh.rostro3(); popMatrix(); break;
 case 3: pushMatrix(); translate(-230,0); cuatroh.posicion(); cuatroh.rostro4(); popMatrix(); break;
 case 4: pushMatrix(); translate(-630,0); cinko.posicion(); cinko.rostro5(); popMatrix(); break;
 }

 switch(select2){
 case 0: pushMatrix(); translate(840,300); unoh.posicion(); unoh.rostro1(); popMatrix(); break;
 case 1: pushMatrix(); translate(420,300); doh.posicion(); doh.rostro2(); popMatrix(); break;
 case 2: pushMatrix(); translate(0,300); treh.posicion(); treh.rostro3(); popMatrix(); break;
 case 3: pushMatrix(); translate(630,0); cuatroh.posicion(); cuatroh.rostro4(); popMatrix(); break;
 case 4: pushMatrix(); translate(230,0); cinko.posicion(); cinko.rostro5(); popMatrix(); break;
 }
 
 
  //String v1 = String.valueOf(vida1);
  //String v2 = String.valueOf(vida2);
  pushMatrix();
   fill(255);
  //text("vida del prro prruno: ",200,200);
  //text(v1,400,200);
  //text("vida del otro prro: ",700,200);
  //text(v2,900,200);
  strokeWeight(4);
  noFill();
  rectMode(CORNER);
  rect(118,467,104,20);
  rect(968,467,104,20);
  fill(244,247,100);
  noStroke();
  rect(120,470,vida1,15);
  rect(970,470,vida2,15);
  popMatrix();
  if (vida1 <=0 || vida2 <=0){
   ventana4(); 
  }
}

void ventana4(){
 win4.fondo(#F2D278,"Game Ovah");
fill(0);
 if(vida2 <=0){
   textSize(40);
   text("Ganó el jugador 1",600,400);
 }
 if(vida1 <=0){
   textSize(40);
   text("Ganó el jugador 2",600,400);
 }
 textSize(20);
 text("Presiona ENTER para jugar de nuevo",600,500);
 
 if (key == ENTER){
   turn=0;
   turno=0;
   sel = 1;
   select1 = 0;
   select2 = 0;
   vida1=100;
   vida2=100;
   pena=0;
 } 
}
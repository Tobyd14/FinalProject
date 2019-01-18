import ddf.minim.*;
Minim minim;
AudioPlayer music;
int Scene = 0;
int player= 0;
boolean Ronaldo=false;
boolean Messi=false;
boolean Neymar=false;
boolean Auba=false;
boolean Pogba=false;
boolean Mbappe=false;
boolean DeBruyne=false;
boolean Modric=false;
boolean Kane=true;
PImage ronaldo;
PImage messi;
PImage neymar;
PImage auba;
PImage pogba;
PImage mbappe;
PImage debruyne;
PImage modric;
PImage kane;
PImage ball;
PImage startbutton;
PImage benfica;
PImage sportinglisbon;
PImage realmadrid;
PImage manunited;
PFont f;
void setup() {
  minim = new Minim(this);
  music = minim.loadFile("Song.mp3");
  music.play();
  size(1000, 1000); 
  ronaldo = loadImage("ronaldo.png");
  ronaldo.resize(200, 200);
  benfica = loadImage("benfica.png");
  benfica.resize(200, 200);
  sportinglisbon = loadImage("sporting.png");
  sportinglisbon.resize(200, 200);
  realmadrid = loadImage("realmadrid.png");
  realmadrid.resize(200, 200);
  manunited = loadImage("manu.png");
  manunited.resize(200, 200);
  startbutton = loadImage("startbutton.png");
  startbutton.resize(150, 150);
  ball=loadImage("football.png");
  ball.resize(250, 250);
  messi = loadImage("messi.png");
  messi.resize(200, 200);

  f = createFont("Arial", 30, true);  

  neymar = loadImage("neymar.png");
  neymar.resize(200, 200);

  auba = loadImage("auba.png");
  auba.resize(200, 200);  

  pogba = loadImage("pogba.png");
  pogba.resize(200, 200);

  debruyne = loadImage("debruyne.png");
  debruyne.resize(200, 200);

  mbappe = loadImage("mbappe.png");
  mbappe.resize(200, 200);

  modric = loadImage("modric.png");
  modric.resize(200, 200);

  kane=loadImage("kane.png");
  kane.resize(200, 200);
}
void draw() {
  if (Scene == 0) {
    Intro();
  }
  if (Scene == 1) {
    RonaldoQuiz();

    if (Scene == 2) {
      MessiQuiz();
    }
 if (Scene == 9) {
   KaneQuiz();
 }

}
}
void Intro() {
  if (mousePressed) {
    if (dist(mouseX, mouseY, 650, 450) < 100) {
      Scene= player;
    }
  }
  background(0);
  textFont(f, 60);                  
  fill(255, 0, 0);                          
  text("Head Football", 300, 100);
  textFont(f, 30);
  fill(255, 0, 0);
  text("Player Selector", 300, 390); 
  textFont(f, 20);
  text("(Stats recorded are out of 20 as of 4/12/18)", 300, 200);
  image(ball, 600, 390); 
  image(startbutton, 650, 450);

  if (Ronaldo == true) {
    image(ronaldo, 340, 390);
    textFont(f, 30);
    fill(255, 0, 0);
    text("Cristiano Ronaldo (1)", 300, 625);
    textFont(f, 15);
    fill(255, 0, 0);
    text("Dribble: 20", 300, 650);   
    text("Shot: 20", 300, 665);
    text("Pass: 16", 300, 680);
    text("Defense: 6", 300, 695);
    text("Pace: 20", 300, 710);
    text("Skills: 16", 300, 725);
    text("Height: 1.87m", 300, 740);
    text("Position: LW/ST", 450, 650);
    text("Age: 33", 450, 665);
    text("Club: Juventus", 450, 680);
    text("Nationality: Portugal", 450, 695);
    text("Ballon D'Or Ranking 2018: 2", 450, 710);
    text("Total Appearances / Goals in Career: 930/667", 450, 725);
    text("Current Market Value: £90,000,000", 450, 740);
    player = 1;
    
  }
  if (Messi == true) {
    image(messi, 340, 390);
    player = 2;
    textFont(f, 30);
    fill(255, 0, 0);
    text("Lionel Messi (2)", 300, 625);
    textFont(f, 15);
    fill(255, 0, 0);
    text("Dribble: 20", 300, 650);   
    text("Shot: 20", 300, 665);
    text("Pass: 19", 300, 680);
    text("Defense: 3", 300, 695);
    text("Pace: 19", 300, 710);
    text("Skills: 18", 300, 725);
    text("Height: 1.70m", 300, 740);
    text("Position: CF/ST/RW", 450, 650);
    text("Age: 31", 450, 665);
    text("Club: Barcelona", 450, 680);
    text("Nationality: Argentina", 450, 695);
    text("Ballon D'Or Ranking 2018: 5", 450, 710);
    text("Total Appearances / Goals in Career: 781/632", 450, 725);
    text("Current Market Value: £162,000,000", 450, 740);
  
  }  
  if (Neymar == true) {
    image(neymar, 340, 390);
    textFont(f, 30);
    player = 3;
    fill(255, 0, 0);
    text("Neymar (3)", 300, 625);
    textFont(f, 15);
    fill(255, 0, 0);
    text("Dribble: 19", 300, 650);   
    text("Shot: 14", 300, 665);
    text("Pass: 13", 300, 680);
    text("Defense: 4", 300, 695);
    text("Pace: 18", 300, 710);
    text("Skills: 20", 300, 725);
    text("Height: 1.75m", 300, 740);
    text("Position: LW/ST", 450, 650);
    text("Age: 26", 450, 665);
    text("Club: Paris Saint Germain", 450, 680);
    text("Nationality: Brazil", 450, 695);
    text("Ballon D'Or Ranking 2018: 3", 450, 710);
    text("Total Appearances / Goals in Career: 464/278", 450, 725);
    text("Current Market Value: £168,000,000", 450, 740);


   
  }   
  if (Auba == true) {
    player = 4;
    image(auba, 340, 390);
    textFont(f, 30);
    fill(255, 0, 0);
    text("P.E Aubameyang (4)", 300, 625);
    textFont(f, 15);
    fill(255, 0, 0);
    text("Dribble: 14", 300, 650);   
    text("Shot: 17", 300, 665);
    text("Pass: 12", 300, 680);
    text("Defense: 8", 300, 695);
    text("Pace: 20", 300, 710);
    text("Skills: 15", 300, 725);
    text("Height: 1.87", 300, 740);
    text("Position: LW/ST", 450, 650);
    text("Age: 29", 450, 665);
    text("Club: Arsenal", 450, 680);
    text("Nationality: Gabon", 450, 695);
    text("Ballon D'Or Ranking 2018: N/A", 450, 710);
    text("Total Appearances / Goals in Career: 334/190", 450, 725);
    text("Current Market Value: £67,500,000", 450, 740);



  }   
  if (Pogba == true) {
    image(pogba, 340, 390);
    player = 5;
    textFont(f, 30);
    fill(255, 0, 0);
    text("Paul Pogba (5)", 300, 625);
    textFont(f, 15);
    fill(255, 0, 0);
    text("Dribble: 16", 300, 650);   
    text("Shot: 12", 300, 665);
    text("Pass: 17", 300, 680);
    text("Defense: 10", 300, 695);
    text("Pace: 12", 300, 710);
    text("Skills: 15", 300, 725);
    text("Height: 1.91m", 300, 740);
    text("Position: CM", 450, 650);
    text("Age: 25", 450, 665);
    text("Club: Manchester United", 450, 680);
    text("Nationality: France", 450, 695);
    text("Ballon D'Or Ranking 2018: 15", 450, 710);
    text("Total Appearances / Goals in Career: 312/57", 450, 725);
    text("Current Market Value: £81,000,000", 450, 740);
  
  } 
  if (Mbappe == true) {
    image(mbappe, 340, 390);
    textFont(f, 30);
    fill(255, 0, 0);
    player = 6;
    text("Kyllian Mbappe (6)", 300, 625);
    textFont(f, 15);
    fill(255, 0, 0);
    text("Dribble: 18", 300, 650);   
    text("Shot: 15", 300, 665);
    text("Pass: 13", 300, 680);
    text("Defense: 8", 300, 695);
    text("Pace: 20", 300, 710);
    text("Skills: 18", 300, 725);
    text("Height: 1.78m", 300, 740);
    text("Position: RW/ST", 450, 650);
    text("Age: 19", 450, 665);
    text("Club: Paris Saint Germain", 450, 680);
    text("Nationality: France", 450, 695);
    text("Ballon D'Or Ranking 2018: 4", 450, 710);
    text("Total Appearances / Goals in Career: 137/72", 450, 725);
    text("Current Market Value: £162,000,000", 450, 740);
   
  } 
  if (Modric == true) {
    image(modric, 340, 390);
    player = 7;
    textFont(f, 30);
    fill(255, 0, 0);
    text("Luka Modric (7)", 300, 625);
    textFont(f, 15);
    fill(255, 0, 0);
    text("Dribble: 20", 300, 650);   
    text("Shot: 13", 300, 665);
    text("Pass: 20", 300, 680);
    text("Defense: 12", 300, 695);
    text("Pace: 15", 300, 710);
    text("Skills: 14", 300, 725);
    text("Height: 1.72m", 300, 740);
    text("Position: CM", 450, 650);
    text("Age: 33", 450, 665);
    text("Club: Real Madrid", 450, 680);
    text("Nationality: Croatia", 450, 695);
    text("Ballon D'Or Ranking 2018: 1", 450, 710);
    text("Total Appearances / Goals in Career: 623/65", 450, 725);
    text("Current Market Value: £22,500,000", 450, 740);

  } 
  if (DeBruyne == true) {
    image(debruyne, 340, 390);
    player = 8;
    textFont(f, 30);
    fill(255, 0, 0);
    text("Kevin De Bruyne (8)", 300, 625);
    Ronaldo = false;
    Neymar = false;
    Messi = false;
    Auba = false;
    Pogba = false;
    Mbappe = false;
    Kane = false;
    textFont(f, 15);
    fill(255, 0, 0);
    text("Dribble: 18", 300, 650);   
    text("Shot: 17", 300, 665);
    text("Pass: 20", 300, 680);
    text("Defense: 9", 300, 695);
    text("Pace: 13", 300, 710);
    text("Skills: 16", 300, 725);
    text("Height: 1.81m", 300, 740);
    text("Position: CAM/CM", 450, 650);
    text("Age: 27", 450, 665);
    text("Club: Manchester City", 450, 680);
    text("Nationality: Belgium", 450, 695);
    text("Ballon D'Or Ranking 2018: 9", 450, 710);
    text("Total Appearances / Goals in Career: 444/97", 450, 725);
    text("Current Market Value: £135,000,000", 450, 740);
  } 
  if (Kane == true) {
    image(kane, 340, 390);
    textFont(f, 30);
    fill(255, 0, 0);
    player = 9;
    text("Harry Kane (9)", 300, 625);
    Ronaldo = false;
    Neymar = false;
    Messi = false;
    Auba = false;
    Pogba = false;
    Mbappe = false;
    DeBruyne = false;
    textFont(f, 15);
    fill(255, 0, 0);
    text("Dribble: 16", 300, 650);   
    text("Shot: 20", 300, 665);
    text("Pass: 14", 300, 680);
    text("Defense: 10", 300, 695);
    text("Pace: 14", 300, 710);
    text("Skills: 12", 300, 725);
    text("Height: 1.88m", 300, 740);
    text("Position: ST", 450, 650);
    text("Age: 25", 450, 665);
    text("Club: Tottenham Hotspur", 450, 680);
    text("Nationality: England", 450, 695);
    text("Ballon D'Or Ranking 2018: 5", 450, 710);
    text("Total Appearances / Goals in Career: 346/199", 450, 725);
    text("Current Market Value: £135,000,000", 450, 740);
  }
}
void RonaldoQuiz() {
  if (Scene == 1) {
    background(0);
    textFont(f, 30);
    fill(255, 0, 0);
    text("Question 1: What Was Cristiano Ronaldo's First Club?", 200, 200);
    textFont(f, 30);
    fill(255, 0, 0);
    text("A. Benfica", 60, 400);
    text("B. Real Madrid", 450, 400);
    text("C. Sporting Lisbon", 60, 700);
    text("D. Manchester United", 450, 700);
    image(manunited, 450, 720);
    image(sportinglisbon, 60, 720);
    image(realmadrid, 450, 420);
    image(benfica, 60, 420);
    if (mousePressed) {
      if (dist(mouseX, mouseY, 163, 806)<100)
      {
        Scene= 13; //<>//
      }
      if (dist(mouseX, mouseY, 500, 750)<100)
      {
        Scene= 10;
      }
      if (dist(mouseX, mouseY, 500, 450)<100)
      {
        Scene = 10;
      }
      if (dist(mouseX, mouseY, 110, 470)<100)

      {
        Scene= 10;
      }
    }
  }
  if (Scene == 13) {
    background(0);
    textFont(f, 30);
    fill(255, 0, 0);
    text("Question 2: What Year Was Cristiano Ronaldo's Record Transfer From Manchester United To Real Madrid?", 200, 200);
    textFont(f, 30);
    fill(255, 0, 0);
    text("A. 2007", 60, 400);
    text("B. 2008", 450, 400);
    text("C. 2009", 60, 700);
    text("D. 2010", 450, 700);
    if (mousePressed) {
      if (dist(mouseX, mouseY, 60, 700)<100)
      {
        Scene= 14;
      }
      if (dist(mouseX, mouseY, 60, 400)<100)
      {
        Scene= 15;
      }
      if (dist(mouseX, mouseY, 450, 400)<100)
      {
        Scene = 15;
      }
      if (dist(mouseX, mouseY, 450, 700)<100)

      {
        Scene= 15;
      }
    }
  }
}
void MessiQuiz() {
  if (Scene == 2) {
    background(0);
    textFont(f, 30);
    fill(255, 0, 0);
    text("Question 1: How Many Goals Has Messi Scored in his Professional Career for Barcelona?", 200, 200);
    textFont(f, 30);
    fill(255, 0, 0);
    text("A. 499", 60, 400);
    text("B. 399", 450, 400);
    text("C. 299", 60, 700);
    text("D. 599", 450, 700);

    if (mousePressed) {
      if (dist(mouseX, mouseY, 450, 400)<100)
      {
        Scene= 13;
      }
      if (dist(mouseX, mouseY, 60, 400)<100)
      {
        Scene= 12;
      }
      if (dist(mouseX, mouseY, 60, 700)<100)
      {
        Scene = 12;
      }
      if (dist(mouseX, mouseY, 450, 700)<100)

      {
        Scene= 12;
      }
    }
    if (Scene == 12) {
      background(255, 0, 0);
      textFont(f, 30);
      fill(0);
      text("Wrong Answer", 200, 400);
      text("Return to Main Menu", 200, 600);
      if (dist(mouseX, mouseY, 200, 600)<100)
      {
        Scene= 0;
      }
    }
  }}
  void KaneQuiz() {
  if (Scene == 9) {
    background(0);
    textFont(f, 30);
    fill(255, 0, 0);
    text("Question 1: How Many Goals Did Kane Score in the 2018 World Cup?", 200, 200);
    textFont(f, 30);
    fill(255, 0, 0);
    text("A. 3", 60, 400);
    text("B. 4", 450, 400);
    text("C. 5", 60, 700);
    text("D. 6", 450, 700);

    if (mousePressed) {
      if (dist(mouseX, mouseY, 450, 700)<100)
      {
        Scene= 19;
      }
      if (dist(mouseX, mouseY, 60, 400)<100)
      {
        Scene= 20;
      }
      if (dist(mouseX, mouseY, 60, 700)<100)
      {
        Scene = 20;
      }
      if (dist(mouseX, mouseY, 450, 400)<100)

      {
        Scene= 20;
      }  
    
    
    
  }}

  }


void keyPressed() {
  if (key == '1') {
    Ronaldo = true;
    Modric = false;
    Neymar = false;
    Messi = false;
    Auba = false;
    Pogba = false;
    DeBruyne = false;
    Mbappe = false;
    Kane = false;
  }
  if (key == '2') {
    Messi = true;
    Modric = false;
    Ronaldo = false;
    Neymar = false;
    Auba = false;
    Pogba = false;
    DeBruyne = false;
    Mbappe = false;
    Kane = false;
  }
  if (key == '3') {
    Neymar = true;
    Modric = false;
    Ronaldo = false;
    Messi = false;
    Auba = false;
    Pogba = false;
    DeBruyne = false;
    Mbappe = false;
    Kane = false;
  }
  if (key == '4') {
    Auba = true;
    Modric = false;
    Ronaldo = false;
    Neymar = false;
    Messi = false;
    Pogba = false;
    DeBruyne = false;
    Mbappe = false;
    Kane = false;
  }
  if (key == '5') {
    Pogba = true;
    Modric = false;
    Ronaldo = false;
    Neymar = false;
    Messi = false;
    Auba = false;
    DeBruyne = false;
    Mbappe = false;
    Kane = false;
  }
  if (key == '6') {
    Mbappe = true;
    Modric = false;
    Ronaldo = false;
    Neymar = false;
    Messi = false;
    Auba = false;
    Pogba = false;
    DeBruyne = false;
    Mbappe = false;
    Kane = false;
  } 
  if (key == '7') {
    Modric = true;
    Ronaldo = false;
    Neymar = false;
    Messi = false;
    Auba = false;
    Pogba = false;
    DeBruyne = false;
    Mbappe = false;
    Kane = false;
  }

  if (key == '8') {
    DeBruyne = true;
    Modric = false;
    Ronaldo = false;
    Neymar = false;
    Messi = false;
    Auba = false;
    Pogba = false;
    Mbappe = false;
    Kane = false;
  }
  if (key == '9') {
    Kane = true;
    Modric = false;
    Ronaldo = false;
    Neymar = false;
    Messi = false;
    Auba = false;
    Pogba = false;
    DeBruyne = false;
    Mbappe = false;
  }
}

//Emma Dong
//Block 1-1B
//October 16th, 2020
//Pong Project


/*Checklist:
 ==customization screen 2
 ==music & sound effects
 */



import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

///     Sound Variables     ///
Minim minim;
AudioPlayer custmsc;
AudioPlayer pausemsc;
AudioPlayer gmsc;
AudioPlayer intromsc;
AudioPlayer gameovermsc;
AudioPlayer bounce;
AudioPlayer press;
AudioPlayer pageflip;
AudioPlayer ping;
AudioPlayer helpmsc;




///     Imported Files     ///
PFont goodmood;
PFont christmas;
PFont mono;
PImage helpmg;



///     Colors     ///
color lnavy   = #085F63;
color lteal   = #49BEB7;
color lyellow = #FACF5A;
color lred    = #FF5959;
color lfaintred = #ff8c8c;

color dnavy   = #053c3f;
color dteal   = #318883;
color dyellow = #eaad07;
color dred    = #e30000;
color dfaintred = #ff2a2a;

boolean boldcolorson = false;



///     Mode Variables     ///
int mode;
final int intro    = 1 ;
final int game     = 2 ;
final int pause    = 3 ;
final int gameover = 4 ;
final int customize = 5;
final int customize2 = 6;
final int help = 7;



///     Paddle Variables     ///
float leftx, lefty, leftd, rightx, righty, rightd; 
boolean circlepaddles;
boolean rectpaddles;

float rleftx, rlefty, rleftw, rlefth;
float rrightx, rrighty, rrightw, rrighth;


///     Ball Variables     ///
float ballx, bally, balld;
float vx, vy;
float initialvx, initialvy;
float initialballd;
boolean growOn;
int growcount;

boolean defaulton, smallon, smalleston, bigon, biggeston;



///     Keyboard Variables     ///
boolean wkey, skey, upkey, downkey;



///     Score Variables     ///
int lscore, rscore, timer, winscore;
boolean rwin;
float redwin, yellowwin;
boolean ywin;
float cnftix, cnftiy, cnftiw, cnftih;



///     Intro Screen Ball Animation Variables     ///
float blx, bly, vblx, vbly;



///     AI Variables     ///
boolean AI;



///     Customization Variables      ///
float pshapecx;
int vpcx;
boolean custpshapec;
float pctimer;
int pcfill;

float pshaperx;
int vprx;
boolean custshaper;
float prtimer;
int prfill;






void setup() {
  size(800, 600);
  mode = intro;
  textAlign(CENTER, CENTER);

  // Minim
  minim = new Minim(this);
  custmsc = minim.loadFile("Quiettime.mp3");
  pausemsc = minim.loadFile("Funny.mp3");
  gmsc = minim.loadFile("Game.mp3");
  gameovermsc = minim.loadFile("Gameover.mp3");
  intromsc = minim.loadFile("Intromsc.mp3");
  bounce = minim.loadFile("bounce.mp3");
  press = minim.loadFile("press.mp3");
  pageflip = minim.loadFile("flip.mp3");
  ping = minim.loadFile("ping.mp3");
  helpmsc = minim.loadFile("help.mp3");


  // Imported Files
  goodmood = createFont("goodmood.ttf", 100);
  christmas = createFont("christmas.ttf", 35);
  mono = createFont("mono.otf",30);
  helpmg = loadImage("help.png");

  // Left and Right Paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;

  circlepaddles = true;
  rectpaddles = false;

  rleftx = 0;
  rlefty = 200;
  rleftw = 50;
  rlefth = 200;

  rrightx = 750;
  rrighty = 200;
  rrightw = 50;
  rrighth = 200;

  // Ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  initialballd = balld;
  growOn = false;
  growcount = 0;
  vx = random(-3, 5);
  vy = random(-3, 5);
  initialvx = vx;
  initialvy = vy;

  smallon = smalleston = bigon = biggeston = false;
  defaulton = true;

  // Keyboard Variables
  wkey = skey = downkey = upkey = false;

  // Score Variables
  rscore = lscore = 0;
  timer = 160;
  rwin = false;
  ywin = false;
  winscore = 3;
  redwin = 50; 
  yellowwin = 50;

  // Intro Animation
  blx = 400;
  bly = 300;
  vblx = 5;
  vbly = 5;

  // AI
  AI = false;

  // Customization Variables //
  pshapecx = 222.5;
  vpcx = 2;
  custpshapec = false;
  pctimer = 0;
  if (boldcolorson == false) {
    pcfill = lred;
  } else if (boldcolorson == true) {
    pcfill = dred;
  }

  pshaperx = 517;
  if (boldcolorson == false) {
    prfill = lyellow;
  } else prfill = dyellow;
  vprx = 2;
  custshaper = false;
  prtimer = 0;
}



void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == pause) {
    pause();
  } else if (mode == customize) {
    customize();
  } else if (mode == customize2) {
    customize2();
  } else if (mode == help) {
    help();
  } else {
    println("Error: Mode is " + mode);
  }
}

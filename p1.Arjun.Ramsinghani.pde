// Name: Arjun Ramsinghani
// Course: Human Computer Interaction

// OBJECTS //
Button buttonfloor1;
Button buttonfloor2;
Button buttonfloor3;
Button buttonfloor4;
Button buttonopendoor;
Button buttonclosedoor;
Button buttoncallforhelp;
Button buttonalarm;


void setup() {
  size(600, 900);

  // display floor
  fill(100, 100, 255);
  rect(350, 20, 220, 220);

  // TECHNICIAN KEYS -- THESE ARE FOR AUTHORIZED INDIVIDUALS ONLY //

  // run key row 1 column 1
  fill(100, 100, 255);
  rect(20, 20, 120, 70);
  fill(0);
  circle(110, 55, 40);
  fill(0);
  textSize(20);
  text("Run", 55, 45);
  text("Stop", 54, 80);

  // access key row 1 column 2
  fill(100, 100, 255);
  rect(160, 20, 120, 70);
  fill(0);
  circle(250, 55, 40);
  fill(0);
  textSize(20);
  text("On", 205, 45);
  text("ACCESS", 160, 62);
  text("Off", 204, 80);

  // fire key row 2 column 1
  fill(100, 100, 255);
  rect(20, 110, 120, 70);
  fill(0);
  circle(110, 145, 40);
  fill(0);
  textSize(20);
  text("On", 66, 130);
  text("FIRE", 25, 150);
  text("Off", 65, 170);

  // light key row 3 column 1
  fill(100, 100, 255);
  rect(20, 200, 120, 70);
  fill(0);
  circle(110, 235, 40);
  fill(0);
  textSize(20);
  text("On", 66, 225);
  text("LIGHT", 25, 242);
  text("Off", 65, 259);

  // fan key row 3 column 2
  fill(100, 100, 255);
  rect(160, 200, 120, 70);
  fill(0);
  circle(250, 235, 40);
  fill(0);
  textSize(20);
  text("On", 205, 225);
  text("FAN", 165, 242);
  text("Off", 204, 259);


  // USER BUTTONS //

  // call button
  fill(100, 100, 255);
  rect(140, 480, 130, 70);
  buttoncallforhelp = new Button(207, 487, 55, 255, 255, 255);
  fill(0);
  textSize(20);
  text("Call", 157, 502);
  text("For", 160, 522);
  text("Help", 155, 542);

  // alarm button
  fill(100, 100, 255);
  rect(290, 480, 130, 70);
  buttonalarm = new Button(357, 487, 55, 255, 255, 255);
  fill(0);
  textSize(20);
  text("Alarm", 300, 522);

  // button for floor 1
  fill(100, 100, 255);
  rect(140, 660, 130, 70);
  buttonfloor1 = new Button(207, 667, 55, 255, 255, 255);
  fill(0);
  textSize(70);
  text("1", 157, 717);

  // button for floor 2
  fill(100, 100, 255);
  rect(290, 660, 130, 70);
  buttonfloor2 = new Button(357, 667, 55, 255, 255, 255);
  fill(0);
  textSize(70);
  text("2", 307, 717);

  // button for floor 3
  fill(100, 100, 255);
  rect(140, 570, 130, 70);
  buttonfloor3 = new Button(207, 577, 55, 255, 255, 255);
  fill(0);
  textSize(70);
  text("3", 157, 627);

  // button for floor 4
  fill(100, 100, 255);
  rect(290, 570, 130, 70);
  buttonfloor4 = new Button(357, 577, 55, 255, 255, 255);
  fill(0);
  textSize(70);
  text("4", 307, 627);

  // button for open door
  fill(100, 100, 255);
  rect(140, 750, 130, 70);
  buttonopendoor = new Button(207, 757, 55, 255, 255, 255);
  fill(0);
  textSize(20);
  text("Open", 150, 792);

  // button for close door
  fill(100, 100, 255);
  rect(290, 750, 130, 70);
  buttonclosedoor = new Button(357, 757, 55, 255, 255, 255);
  fill(0);
  textSize(20);
  text("Close", 300, 792);
}

void draw() {
  buttonfloor1.update();
  buttonfloor2.update();
  buttonfloor3.update();
  buttonfloor4.update();
  buttonopendoor.update();
  buttonclosedoor.update();
  buttoncallforhelp.update();
  buttonalarm.update();
}

void mousePressed() {
  if (buttonfloor1.mouseOver() == true) {
    buttonfloor1.press = true;
  }

  if (buttonfloor2.mouseOver() == true) {
    buttonfloor2.press = true;
  }

  if (buttonfloor3.mouseOver() == true) {
    buttonfloor3.press = true;
  }

  if (buttonfloor4.mouseOver() == true) {
    buttonfloor4.press = true;
  }

  if (buttonopendoor.mouseOver() == true) {
    buttonopendoor.press = true;
  }

  if (buttonclosedoor.mouseOver() == true) {
    buttonclosedoor.press = true;
  }

  if (buttoncallforhelp.mouseOver() == true) {
    buttoncallforhelp.press = true;
  }

  if (buttonalarm.mouseOver() == true) {
    buttonalarm.press = true;
  }
}

void mouseReleased() {
  if (buttonfloor1.mouseOver() == true) {
    delay(5000);
    buttonfloor1.press = false;
  }

  if (buttonfloor2.mouseOver() == true) {
    delay(5000);
    buttonfloor2.press = false;
  }

  if (buttonfloor3.mouseOver() == true) {
    delay(5000);
    buttonfloor3.press = false;
  }

  if (buttonfloor4.mouseOver() == true) {
    delay(5000);
    buttonfloor4.press = false;
  }

  if (buttonopendoor.mouseOver() == true) {
    delay(5000);
    buttonopendoor.press = false;
  }

  if (buttonclosedoor.mouseOver() == true) {
    delay(5000);
    buttonclosedoor.press = false;
  }
}

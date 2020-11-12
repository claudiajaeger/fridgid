void setup() {
  size(537, 1021);
  //load images
  splash = loadImage("images/1.png");
  home_pop = loadImage("images/2.png");
  home_sort_all = loadImage("images/3.png");
  home_sort_category = loadImage("images/4.png");
  home_sort_date = loadImage("images/5.png");
  phone = loadImage("images/6.png");
  siriAnswer = loadImage("images/8.png");
  homeScreen = loadImage("images/9.png");

  //load audio
  click = new SoundFile(this, "sound/Click.mp3");
  notification = new SoundFile(this, "sound/Notification.mp3");
  //load video
  siri = new Movie(this, "video/Siri.mp4");
  time = millis();
}

void mousePressed() {
  //close pop-up
  if (mouseX >= 235 && mouseX <= 310 && mouseY >= 495 && mouseY <= 535 && state == 0) {
    state = 1;
    click.play();
  } else if (state < 4 && state > 0) {
    //sort by category
    if (mouseX >= 260 && mouseX <= 280 && mouseY >= 260 && mouseY <= 280) {
      state = 2;
      click.play();
      stateCheck = true;
      if (stateCheck && stateCheck2) {
        phone = loadImage("images/7.png");
      }
    } //sort by expiration date
    else if (mouseX >= 400 && mouseX <= 420 && mouseY >= 260 && mouseY <= 280) {
      state = 3;
      click.play();
      stateCheck2 = true;
      if (stateCheck && stateCheck2) {
        phone = loadImage("images/7.png");
      }
    } //unsorted list
    else if (mouseX >= 120 && mouseX <= 140 && mouseY >= 260 && mouseY <= 280) {
      state = 1;
      click.play();
    } //show video (only when every page has been visited)
    else if (mouseX >= 230 && mouseX <= 310 && mouseY >= 870 && mouseY <= 950 && stateCheck && stateCheck2) {
      state = 4;
      phone = loadImage("images/6.png");
      siri.play();
    } //arrows for next and previous week
    else if (mouseX >= 325 && mouseX <= 345 && mouseY >= 805 && mouseY <= 835) {
      home_sort_all = loadImage("images/3_5.png");
      home_sort_category = loadImage("images/4_5.png");
      home_sort_date = loadImage("images/5_5.png");
      click.play();
    } else if (mouseX >= 200 && mouseX <= 220 && mouseY >= 805 && mouseY <= 835) {
      home_sort_all = loadImage("images/3.png");
      home_sort_category = loadImage("images/4.png");
      home_sort_date = loadImage("images/5.png");
      click.play();
    }
  }
  //restarts the program
  if (state == 5 && mouseX >= 100 && mouseX <= 160 && mouseY >= 570 && mouseY <= 640) {
    state = 0;
    splashScreen = false;
    video = false;
    stateCheck = false;
    stateCheck2 = false;
    time = millis();
    siri = new Movie(this, "video/siri.mp4");
    home_sort_all = loadImage("images/3.png");
    home_sort_category = loadImage("images/4.png");
    home_sort_date = loadImage("images/5.png");
  }
}
void movieEvent(Movie m) {
  m.read();
}

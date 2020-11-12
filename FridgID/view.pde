void draw() {
  background(phone);
  // show splashscreen
  if (!splashScreen) {
    image(splash, 62, 131, 417, 739);
    if (millis() >= time + 3000) {
      splashScreen = true;
      notification.play();
    }
  } else {
    //draw UI depending on state
    switch(state) {
    case 0:
      image(home_pop, 62, 131, 417, 739);
      break;
    case 1:
      image(home_sort_all, 62, 131, 417, 739);
      break;
    case 2:
      image(home_sort_category, 62, 131, 417, 739);
      break;
    case 3:
      image(home_sort_date, 62, 131, 417, 739);
      break;
    case 4:
      //show video of interaction with voice assistant
      if (!video) {
        image(siri, 62, 131, 417, 739);
        if (siri.time() >= siri.duration() - 0.001) {
          video = true;
          time = millis();
        }
      } else {
        image(siriAnswer, 62, 131, 417, 739);
        if (millis() >= time + 4000) {
          state = 5;
        }
      }
      break;
    case 5:
      image(homeScreen, 62, 131, 417, 739);
      break;
    }
  }
}

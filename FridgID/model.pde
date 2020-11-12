//Import audio and video libraries
import processing.sound.*;
import processing.video.*;

//Audio variables
SoundFile click;
SoundFile notification;

//Video variable
Movie siri;

//image variables
PImage splash, home_pop, home_sort_all, home_sort_category, home_sort_date, phone, siriAnswer, homeScreen;

//state controlling variables
int state, time;
boolean splashScreen, video, stateCheck, stateCheck2;

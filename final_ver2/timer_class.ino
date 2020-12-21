/*
//adapted from Dan Shifman
class Timer {
    //all accessors public
  public:
    int savedTime;
    int totalTime;

    //prototyping methods
    Timer(int tempTotalTime);
    void start();
    bool isFinished();
};

//constructor
Timer::Timer(int tempTotalTime) {
  totalTime = tempTtotalTime;
}

//initializes start time
void Timer::start() {
  savedTime = millis();
}

//checks to see when timer is done
boolean Timer::isFinished() {
  int passedTime = millis() - savedTime;

  if (passedTime > totalTime) {
    return true;
  }
  else {
    return false;
  }
}
*/

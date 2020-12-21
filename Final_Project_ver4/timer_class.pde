class Timer {
  int savedTime;  // When Timer started
  int totalTime;  // How long Timer should last
  
  //constructor
  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  //methods
  void start() {
    savedTime = millis();
  }
  boolean isFinished() {
    // Check how much time has passed
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}

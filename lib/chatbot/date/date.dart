class Date {
  late DateTime currentDate;
  late int hour;
  late int minute;
  late String weekend;

  Date() {
    currentDate = DateTime.now();
  }

  int get year => currentDate.year;
  int get month => currentDate.month;
  int get day => currentDate.day;

  void setTime() {
    currentDate = DateTime.now();
    hour = currentDate.hour;
    minute = currentDate.minute;
  }

  void setWeekend() {
    switch (currentDate.weekday) {
      case 1:
        weekend = '월요일';
        break;
      case 2:
        weekend = '화요일';
        break;
      case 3:
        weekend = '수요일';
        break;
      case 4:
        weekend = '목요일';
        break;
      case 5:
        weekend = '금요일';
        break;
      case 6:
        weekend = '토요일';
        break;
      case 7:
        weekend = '일요일';
        break;
    }
  }
}

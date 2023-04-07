


import 'package:e_empowerment/plan%C3%A8te01/niveau01/data/enums.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/data/models/alarm_info.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/data/models/menu_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock, title: 'Clock', imageSource: 'assets/clock_icon.png'),
  MenuInfo(MenuType.alarm, title: 'Alarm', imageSource: 'assets/alarm_icon.png'),
  MenuInfo(MenuType.timer, title: 'Timer', imageSource: 'assets/timer_icon.png'),
  MenuInfo(MenuType.stopwatch, title: 'Stopwatch', imageSource: 'assets/stopwatch_icon.png'),
];

List<AlarmInfo> alarms = [
  AlarmInfo(alarmDateTime: DateTime.now().add(Duration(hours: 1)), title: 'Office', gradientColorIndex: 0),
  AlarmInfo(alarmDateTime: DateTime.now().add(Duration(hours: 2)), title: 'Sport', gradientColorIndex: 1),
];
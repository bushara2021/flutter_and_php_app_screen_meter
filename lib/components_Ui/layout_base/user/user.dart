import 'package:flutter/material.dart';
import 'package:project/functions/login/login.dart';
import 'package:project/main.dart';

String numberMeterGet = LoginFunction.getNumberMeter();
String userNameGet = LoginFunction.getUserName();
final List<String> days = <String>[
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday'
];
final List<String> months = <String>[
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];
final DateTime time = DateTime.now();
final int hour = time.hour;
final int minute = time.minute;
final int day = time.weekday;
final int month = time.month;
final int dayInMonth = time.day;
final drawerHeader = UserAccountsDrawerHeader(
  decoration: BoxDecoration(color: Colors.teal[300]),
  accountName: Text('username : $userNameGet'),
  accountEmail: Text('Number-Meter : $numberMeterGet'),
  currentAccountPicture: CircleAvatar(
    child: (Icon(Icons.person, color: Colors.black26, size: 45)),
    backgroundColor: Colors.white,
  ),
  otherAccountsPictures: <Widget>[
    CircleAvatar(
      child: (Icon(Icons.notification_important_outlined,
          color: Colors.white, size: 30)),
      backgroundColor: Colors.black26,
    ),
    CircleAvatar(
      child: (Icon(Icons.mobile_screen_share_sharp,
          color: Colors.white, size: 30)),
      backgroundColor: Colors.black26,
    ),
    CircleAvatar(
      child:
          (Icon(Icons.model_training_outlined, color: Colors.white, size: 30)),
      backgroundColor: Colors.black26,
    ),
  ],
);

class LogoutUi {
  static Widget ListViewLogout(context) {
    return ListView(
      children: <Widget>[
        Card(
          color: Colors.teal,
          child: (drawerHeader),
        ),
        CircleAvatar(
          child: (Icon(Icons.mobile_screen_share_sharp,
              color: Colors.white, size: 30)),
          backgroundColor: Colors.teal[300],
        ),
        ListTile(
          title: Text(
            'date   :',
            style: TextStyle(fontSize: 18.0, color: Colors.teal),
          ),
        ),
        ListTile(
          title: Text(
            '[${hour < 10 ? '0$hour' : '$hour'}:${minute < 10 ? '0$minute' : '$minute'} pm #-#${days[day - 1]} #-#  $dayInMonth      #-#${months[month - 1]}  #-#  ]',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.blueGrey,
            ),
          ),
        ),
        ListTile(
          title: Text(
            '             singup',
            style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
          ),
        ),
        ListTile(
            title: (Icon(Icons.logout, color: Colors.teal, size: 45)),
            onTap: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyApp()))
                }),
      ],
    );
  }
}

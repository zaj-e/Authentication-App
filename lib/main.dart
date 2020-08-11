import 'package:auth_test/pages/authentication/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/booking/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'AUTH',
      home: MyHomePage(
        title: 'Sample',
      ),
      initialRoute: '/app',
      routes: <String, WidgetBuilder>{
        '/authentication': (BuildContext context) => AuthenticationApp(),
        '/app': (BuildContext context) => MyHomePage(title: 'page B'),
      },
    );
  }
}

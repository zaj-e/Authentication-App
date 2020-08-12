import 'package:auth_test/pages/authentication/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auth_test/pages/booking/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AUTH-TEST',
      initialRoute: '/app',
      routes: <String, WidgetBuilder>{
        '/authentication': (BuildContext context) => AuthenticationApp(),
        '/app': (BuildContext context) => AppRouter(),
      },
    );
  }
}

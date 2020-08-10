import 'package:auth_test/pages/authentication/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AUTH',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: MyHomePage(title: 'This is the home page'),
      initialRoute: '/authentication',
      routes: <String, WidgetBuilder>{
        '/authentication': (BuildContext context) => AuthenticationApp(),
        '/app': (BuildContext context) => MyHomePage(title: 'page B'),
      },
    );
  }
}

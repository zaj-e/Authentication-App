import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Register'),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Log-In'),
              onPressed: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

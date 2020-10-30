import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment One'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Hello World!'),
              RaisedButton(onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}

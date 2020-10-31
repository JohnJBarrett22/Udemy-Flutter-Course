import 'package:flutter/material.dart';

import 'text_control.dart';
import 'alternative_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _mainText = 'Hello there, welcome to my App!';

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
              Text(
                _mainText,
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _mainText = 'This changed!';
                  });
                },
                child: Text('Change Text'),
                textColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

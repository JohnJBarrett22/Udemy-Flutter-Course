import 'package:flutter/material.dart';

class ContentControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: null,
        child: Text('Next Joke'),
        textColor: Colors.blue,
      ),
    );
  }
}

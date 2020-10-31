import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String mainText;

  TextOutput(this.mainText);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        mainText,
        style: TextStyle(
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Quotes extends StatelessWidget {
  final String _textData;

  Quotes(this._textData);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.teal,
      height: 50.0,
      child: Center(
        child: Text(_textData,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

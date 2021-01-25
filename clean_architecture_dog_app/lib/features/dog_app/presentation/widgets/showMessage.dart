import 'package:flutter/material.dart';

class ShowMessage extends StatelessWidget {
  final String message;
  const ShowMessage({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}

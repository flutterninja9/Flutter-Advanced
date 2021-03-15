import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CounterWidget extends StatelessWidget {
  final int value;
  const CounterWidget({
    Key key,
    @required this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Lottie.network(
            'https://assets8.lottiefiles.com/packages/lf20_z3yWym.json',
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            value.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 50,
              color: Colors.grey[800],
            ),
          ),
        ),
      ],
    );
  }
}

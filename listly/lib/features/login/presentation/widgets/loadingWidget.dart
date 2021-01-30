import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 25, maxWidth: 25),
        child: CircularProgressIndicator(),
      ),
    );
  }
}

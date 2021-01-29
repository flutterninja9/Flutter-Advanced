import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listly/core/utils/themes/appTextThemes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List of Items",
          style: AppTextThemes.titleStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.receipt_long),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

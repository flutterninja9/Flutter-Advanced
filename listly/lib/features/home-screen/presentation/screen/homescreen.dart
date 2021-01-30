import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:listly/core/utils/themes/appTextThemes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Listly",
          style: AppTextThemes.titleStyle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Get.theme.primaryColor,
        notchMargin: 6,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Get.theme.canvasColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.group,
                color: Get.theme.canvasColor,
              ),
            ),
            SizedBox(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark,
                color: Get.theme.canvasColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Get.theme.canvasColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

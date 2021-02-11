import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

Widget loadingWidget() {
  return Shimmer(
    child: Container(
      height: 200,
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Get.theme.cardColor,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    ),
  );
}

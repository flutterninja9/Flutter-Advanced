import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget failedState() {
  return Container(
    height: 200,
    margin: EdgeInsets.only(top: 20, left: 10, right: 10),
    decoration: BoxDecoration(
      color: Get.theme.cardColor,
      borderRadius: BorderRadius.circular(6.0),
    ),
    child: Center(
      child: Text('Some Error Occured!',
          style: GoogleFonts.poppins(
            fontSize: 25,
            color: Get.theme.canvasColor,
            fontWeight: FontWeight.bold,
          )),
    ),
  );
}

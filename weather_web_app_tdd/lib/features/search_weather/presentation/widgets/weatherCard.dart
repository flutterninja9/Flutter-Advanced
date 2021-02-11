import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget weatherDetailCard({String title, String subTitle, Color color}) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(6.0),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 22,
                color: Get.theme.canvasColor,
                fontWeight: FontWeight.bold),
          ),
          Flexible(
            child: Text(
              subTitle,
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
  );
}

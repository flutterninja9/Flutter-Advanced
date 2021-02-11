import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/models/weather_model.dart';

class WeatherFetched extends StatelessWidget {
  final WeatherModel weather;
  const WeatherFetched({
    Key key,
    this.weather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Get.theme.cardColor,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "City",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Get.theme.canvasColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Text(
                        weather.city,
                        style: GoogleFonts.poppins(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(196, 144, 209, 1),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Temprature",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Get.theme.canvasColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Text(
                        (weather.temprature - 273.15).round().toString() + " C",
                        style: GoogleFonts.poppins(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(238, 150, 75, 1),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pressure",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Get.theme.canvasColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Text(
                        weather.pressure.toString() + " hPa",
                        style: GoogleFonts.poppins(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(78, 205, 196, 1),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Humidity",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Get.theme.canvasColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Text(
                        weather.humidity.toString() + " cM",
                        style: GoogleFonts.poppins(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 10, bottom: 15),
              decoration: BoxDecoration(
                color: Color.fromRGBO(219, 213, 110, 1),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "About",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Get.theme.canvasColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Text(
                        weather.main,
                        style: GoogleFonts.poppins(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 10, bottom: 15),
              decoration: BoxDecoration(
                color: Color.fromRGBO(198, 222, 166, 1),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "More",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Get.theme.canvasColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Text(
                        weather.description.capitalize,
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_web_app_tdd/features/search_weather/presentation/widgets/weatherCard.dart';
import '../../data/models/weather_model.dart';

class WeatherFetched extends StatelessWidget {
  final WeatherModel weather;
  const WeatherFetched({
    Key key,
    this.weather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List titleMain = [
      'City',
      'Temprature',
      'Pressure',
      'Humidity',
      'About',
      'More',
    ];
    Map titles = {
      'City': weather.city,
      'Temprature': (weather.temprature - 273.15).round().toString() + " C",
      'Pressure': weather.pressure.toString() + " hPa",
      'Humidity': weather.humidity.toString() + " CM",
      'About': weather.main,
      'More': weather.description,
    };
    List<Color> cardColors = [
      Get.theme.cardColor,
      Color.fromRGBO(196, 144, 209, 1),
      Color.fromRGBO(238, 150, 75, 1),
      Color.fromRGBO(78, 205, 196, 1),
      Color.fromRGBO(219, 213, 110, 1),
      Color.fromRGBO(198, 222, 166, 1),
    ];
    return Padding(
      padding:
          const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 13.9),
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return weatherDetailCard(
            title: titleMain[index],
            subTitle: titles[titleMain[index]],
            color: cardColors[index],
          );
        },
      ),
    );
  }
}

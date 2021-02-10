import 'package:flutter/material.dart';
import '../../domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    @required String city,
    @required String main,
    @required String description,
    @required double temprature,
    @required int pressure,
    @required int humidity,
  }) : super(
          city: city,
          pressure: pressure,
          description: description,
          temprature: temprature,
          humidity: humidity,
          main: main,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> jsonMap) {
    WeatherModel weatherModel = WeatherModel(
      pressure: (jsonMap["main"]["pressure"] as num).toInt(),
      description: jsonMap["weather"][0]["description"],
      city: jsonMap["name"],
      temprature: jsonMap["main"]["temp"],
      humidity: (jsonMap["main"]["humidity"] as num).toInt(),
      main: jsonMap["weather"][0]["main"],
    );
    return weatherModel;
  }
}

import 'package:flutter/material.dart';
import '../models/weather_model.dart';

abstract class WeatherRemoteDataSource {
  // Will throw a [ServerException] for all the error codes
  Future<WeatherModel> searchWeather({
    @required final String city,
  });
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/secrets.dart';
import '../models/weather_model.dart';

abstract class WeatherRemoteDataSource {
  // Will throw a [ServerException] for all the error codes
  Future<WeatherModel> searchWeather({
    @required final String city,
  });
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final http.Client httpClient;

  WeatherRemoteDataSourceImpl(this.httpClient);
  @override
  Future<WeatherModel> searchWeather({String city}) async {
    String url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=${Secrets.API_KEY}";
    http.Response response = await httpClient.get(
      url,
      headers: {"Content-Type": 'application/json'},
    );
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException();
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../../core/errors/failures.dart';
import '../entities/weather.dart';

import '../repositories/weather_repository.dart';

class SearchWeather extends UseCase<Weather, Params> {
  final WeatherRepository repository;
  SearchWeather(this.repository);

  @override
  Future<Either<Failure, Weather>> call(Params params) async {
    return await repository.searchWeather(city: params.city);
  }
}

class Params extends Equatable {
  final String city;
  Params({@required this.city});
  @override
  List<Object> get props => [city];
}

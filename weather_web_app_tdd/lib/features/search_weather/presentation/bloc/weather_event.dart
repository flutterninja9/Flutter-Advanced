part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class GetWeatherForCity extends WeatherEvent {
  final String city;

  GetWeatherForCity(
    this.city,
  );

  @override
  List<Object> get props => [
        city,
      ];
}

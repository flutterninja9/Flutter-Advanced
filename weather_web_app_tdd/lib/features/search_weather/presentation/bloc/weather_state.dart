part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final WeatherModel weather;

  WeatherLoaded(this.weather);
  @override
  List<Object> get props => [
        weather,
      ];
}

class WeatherLoadingFailed extends WeatherState {
  final String message;

  WeatherLoadingFailed(this.message);
  @override
  List<Object> get props => [
        message,
      ];
}

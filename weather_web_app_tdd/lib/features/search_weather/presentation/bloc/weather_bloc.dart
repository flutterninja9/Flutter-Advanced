import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/errors/failures.dart';

import '../../data/models/weather_model.dart';
import '../../domain/usecases/search_weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final SearchWeather searchWeather;
  WeatherBloc(
    this.searchWeather,
  ) : super(WeatherInitial());

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is GetWeatherForCity) {
      yield WeatherLoading();
      final result = await searchWeather(Params(city: event.city));
      yield* result.fold((failure) async* {
        yield WeatherLoadingFailed(_mapErrorToFailure(failure));
      }, (weather) async* {
        yield WeatherLoaded(weather);
      });
    } else {
      yield WeatherInitial();
    }
  }

  String _mapErrorToFailure(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'SERVER_ERROR';
      case CacheFailure:
        return 'CACHE_ERROR';
      default:
        return 'Unexpected Error';
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import '../../../../core/errors/failures.dart';
import '../entities/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure, Weather>> searchWeather({
    @required String city,
  });
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Weather extends Equatable {
  final String city;
  final String main;
  final String description;
  final double temprature;
  final int pressure;
  final int humidity;

  Weather({
    @required this.main,
    @required this.city,
    @required this.description,
    @required this.temprature,
    @required this.pressure,
    @required this.humidity,
  });
  @override
  List<Object> get props => [
        city,
        main,
        description,
        temprature,
        temprature,
        pressure,
        humidity,
      ];
  @override
  bool get stringify => true;
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flavors.dart';
import 'package:flutter_riverpod/my-app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Provider<Flavor>.value(
    value: Flavor.dev,
    child: MyApp(),
  ));
}

import 'package:flutter/material.dart';
import 'flavors.dart';
import 'my-app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Provider<Flavor>.value(
    value: Flavor.staging,
    child: MyApp(),
  ));
}

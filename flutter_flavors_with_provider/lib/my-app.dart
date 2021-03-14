import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flavors.dart';
import 'package:flutter_riverpod/screens/home-screen.dart';
import 'package:flutter_riverpod/utils/get-theme-as-per-flavor.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final flavor = Provider.of<Flavor>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: getThemeAsPerEnv(flavor),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

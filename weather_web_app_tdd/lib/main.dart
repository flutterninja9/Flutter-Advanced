import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'dependency_injection_container.dart';
import 'features/search_weather/presentation/screens/weather_screen.dart';
import 'core/utils/appTheme.dart';
import 'features/search_weather/presentation/bloc/weather_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // for dependency injection management
  await init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
      create: (context) => sl<WeatherBloc>(),
      child: GetMaterialApp(
        title: 'Weather Web',
        theme: AppTheme.primaryAppTheme,
        home: WeatherScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

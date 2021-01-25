import 'package:clean_architecture_dog_app/features/dog_app/presentation/bloc/image_object_bloc.dart';
import 'package:clean_architecture_dog_app/features/dog_app/presentation/screens/dog_app_screen.dart';
import 'package:clean_architecture_dog_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  init(); //! Dependency Injection for injecting all the functionalities in a single go
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => sl<ImageObjectBloc>(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.pink,
            accentColor: Colors.pinkAccent,
          ),
          debugShowCheckedModeBanner: false,
          home: DogAppScreen()),
    );
  }
}

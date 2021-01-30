import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:listly/core/utils/routes/appRoutes.dart';
import 'package:listly/core/utils/themes/appTheme.dart';

import 'features/login/presentation/bloc/authentication_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: GetMaterialApp(
        title: 'ListLy',
        getPages: AppRoute.pages,
        initialRoute: '/root',
        theme: AppTheme.primaryLight,
        darkTheme: AppTheme.primaryDark,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

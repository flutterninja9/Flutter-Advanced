import 'package:get/get.dart';
import 'package:listly/features/home-screen/presentation/screen/homescreen.dart';
import 'package:listly/features/login/presentation/screens/splash-screen.dart';

class AppRoute {
  static List<GetPage> pages = [
    //! Page route for splash screen
    GetPage(name: '/', page: () => SplashScreen()),

    //! Page route for homescreen
    GetPage(
        name: '/home',
        page: () => HomeScreen(),
        transition: Transition.cupertino),
  ];
}

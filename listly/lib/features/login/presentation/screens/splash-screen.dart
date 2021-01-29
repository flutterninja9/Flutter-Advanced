import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:get/get.dart';
import 'package:listly/core/utils/themes/appTextThemes.dart';
import 'package:listly/features/login/presentation/bloc/authentication_bloc.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.bottom,
    ]);
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/splash-screen/splash.png'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  child: SizedBox(
                width: Get.width,
                height: 50,
                child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  builder: (context, state) {
                    if (state is AuthenticationInitial) {
                      return MaterialButton(
                        onPressed: () {
                          BlocProvider.of<AuthenticationBloc>(context)
                              .add(SignInWithGoogle());
                        },
                        color: Get.theme.primaryColor,
                        textTheme: ButtonTextTheme.primary,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(BrandIcons.google),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sign in with Google",
                              style: AppTextThemes.btnTextMed,
                            ),
                          ],
                        ),
                      );
                    } else if (state is Authenticating) {
                      return CircularProgressIndicator();
                    } else if (state is AuthenticationFailed) {
                      return MaterialButton(
                        onPressed: () {
                          Get.offNamed('/home');
                        },
                        color: Get.theme.primaryColor,
                        textTheme: ButtonTextTheme.primary,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(BrandIcons.google),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sign in with Google",
                              style: AppTextThemes.btnTextMed,
                            ),
                          ],
                        ),
                      );
                    } else if (state is Authenticated) {
                      return MaterialButton(
                        onPressed: () {
                          Get.offNamed('/home');
                        },
                        color: Get.theme.primaryColor,
                        textTheme: ButtonTextTheme.primary,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_right_sharp),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Start making list",
                              style: AppTextThemes.btnTextMed,
                            ),
                          ],
                        ),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

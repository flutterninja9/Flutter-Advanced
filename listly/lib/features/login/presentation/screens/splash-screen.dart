import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:get/get.dart';
import 'package:listly/features/login/presentation/bloc/authentication_bloc.dart';
import 'package:listly/features/login/presentation/widgets/authSuccessWidget.dart';
import 'package:listly/features/login/presentation/widgets/loadingWidget.dart';

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
                      return AuthStateButton(
                          icon: Icon(BrandIcons.google),
                          label: 'Sign in with Google',
                          onPressed: () => context
                              .read<AuthenticationBloc>()
                              .add(SignInWithGoogle()));
                    } else if (state is Authenticating) {
                      return LoadingWidget();
                    } else if (state is AuthenticationFailed) {
                      return AuthStateButton(
                        icon: Icon(BrandIcons.google),
                        label: 'Sign in with Google',
                        onPressed: () => context
                            .read<AuthenticationBloc>()
                            .add(SignInWithGoogle()),
                      );
                    } else if (state is Authenticated) {
                      return AuthStateButton(
                        icon: Icon(Icons.navigate_next),
                        label: 'Start making list',
                        onPressed: () => Get.offAllNamed('/home'),
                      );
                    } else {
                      return LoadingWidget();
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

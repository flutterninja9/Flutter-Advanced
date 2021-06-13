import 'package:auto_route/annotations.dart';
import 'package:domain_driven_design/presentation/sign_in/sign_in_page.dart';
import 'package:domain_driven_design/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
  ],
)
class $Routes {}

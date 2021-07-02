import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design/application/auth/auth_bloc/auth_bloc.dart';
import 'package:domain_driven_design/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            context.router.pushAndPopUntil(
              const NotesOverviewPageRoute(),
              predicate: (_) => false,
            );
          },
          unAuthenticated: (_) {
            context.router.pushAndPopUntil(
              const SignInPageRoute(),
              predicate: (_) => true,
            );
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

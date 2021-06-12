import 'package:domain_driven_design/application/auth/sign-in-form/bloc/sign_in_form_bloc.dart';
import 'package:domain_driven_design/domain/auth/auth_failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  String _getFailureMessage(AuthFailure failure) {
    failure.map(
      cancelledByUser: (_) => 'Cancelled by user',
      serverError: (_) => 'Server error',
      emailAlreadyInUse: (_) => 'Email already used',
      invalidEmailAndPasswordCombination: (_) => 'Recheck your credentials',
    );
    return 'Error unknown';
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        /// fold signifies none(left) or some(either)
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                  (failure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 1),
                        content: Row(
                          children: [
                            const Icon(
                              Icons.info,
                              color: Colors.redAccent,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              _getFailureMessage(failure),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  (_) {
                    //TODO: Navigate
                  },
                ));
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  '📝',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 130,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autocorrect: false,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          shortPassword: (_) => 'Short Password',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .signInWithEmailAndPasswordPressed(),
                              );
                        },
                        child: const Text('Sign In'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .registerWithEmailAndPasswordPressed(),
                              );
                        },
                        child: const Text('Register'),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithGooglePressed(),
                          );
                    },
                    child: const Text(
                      'Sign in with Google',
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}

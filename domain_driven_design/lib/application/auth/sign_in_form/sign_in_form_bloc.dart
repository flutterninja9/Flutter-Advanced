import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain_driven_design/domain/auth/auth_failure.dart';
import 'package:domain_driven_design/domain/auth/i_auth_facade.dart';
import 'package:domain_driven_design/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(
    this._authFacade,
  ) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          /// Sets the newly changed email string as latest-email state,
          /// which then will be checked for validations
          emailAddress: EmailAddress(e.emailStr),

          /// This makes sure that the response from server is resetted, everytime user chnages the email
          /// Basically, it will be used for indicating that we are resetting the process and will start the CTA{or any action} fresh next time
          /// Like here, refreshing state of authentication when email is entered
          authFailureOrSuccessOption: none(),
        );
      },
      paswordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _perfromActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _perfromActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.loginWithEmailAndPassword,
        );
      },
      signInWithGooglePressed: (e) async* {
        /// responsible for showing progress indicator, and refreshing the state of auth
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        /// waits for the actual auth result either in the form of success or failure
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,

          /// here we are sending the Either object to ui,
          /// but this time with some(), because we have some authResult
          authFailureOrSuccessOption: some(
            failureOrSuccess,
          ),
        );
      },
    );
  }

  /// Cleaned up the {login&register-with email and password} code clutter using the p[ower of higher order functions
  Stream<_SignInFormState> _perfromActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    } else {
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(
          failureOrSuccess,
        ),
      );
    }
  }
}

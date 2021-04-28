part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory SignInFormEvent.paswordChanged(String passwordStr) =
      _PaswordChanged;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      _SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      _SignInWithGooglePressed;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  _EmailChanged emailChanged(String emailStr) {
    return _EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  _PaswordChanged paswordChanged(String passwordStr) {
    return _PaswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  _RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const _RegisterWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  _SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const _SignInWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  _SignInWithGooglePressed signInWithGooglePressed() {
    return const _SignInWithGooglePressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult paswordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult paswordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult paswordChanged(_PaswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult paswordChanged(_PaswordChanged value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(_EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged with DiagnosticableTreeMixin implements _EmailChanged {
  const _$_EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.emailChanged'))
      ..add(DiagnosticsProperty('emailStr', emailStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult paswordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(paswordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult paswordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult paswordChanged(_PaswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(paswordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult paswordChanged(_PaswordChanged value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFormEvent {
  const factory _EmailChanged(String emailStr) = _$_EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PaswordChangedCopyWith<$Res> {
  factory _$PaswordChangedCopyWith(
          _PaswordChanged value, $Res Function(_PaswordChanged) then) =
      __$PaswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$PaswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PaswordChangedCopyWith<$Res> {
  __$PaswordChangedCopyWithImpl(
      _PaswordChanged _value, $Res Function(_PaswordChanged) _then)
      : super(_value, (v) => _then(v as _PaswordChanged));

  @override
  _PaswordChanged get _value => super._value as _PaswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(_PaswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$_PaswordChanged
    with DiagnosticableTreeMixin
    implements _PaswordChanged {
  const _$_PaswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.paswordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.paswordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  _$PaswordChangedCopyWith<_PaswordChanged> get copyWith =>
      __$PaswordChangedCopyWithImpl<_PaswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult paswordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(paswordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return paswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult paswordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paswordChanged != null) {
      return paswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult paswordChanged(_PaswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(paswordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return paswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult paswordChanged(_PaswordChanged value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paswordChanged != null) {
      return paswordChanged(this);
    }
    return orElse();
  }
}

abstract class _PaswordChanged implements SignInFormEvent {
  const factory _PaswordChanged(String passwordStr) = _$_PaswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$PaswordChangedCopyWith<_PaswordChanged> get copyWith;
}

/// @nodoc
abstract class _$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$RegisterWithEmailAndPasswordPressedCopyWith(
          _RegisterWithEmailAndPasswordPressed value,
          $Res Function(_RegisterWithEmailAndPasswordPressed) then) =
      __$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  __$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      _RegisterWithEmailAndPasswordPressed _value,
      $Res Function(_RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _RegisterWithEmailAndPasswordPressed));

  @override
  _RegisterWithEmailAndPasswordPressed get _value =>
      super._value as _RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
class _$_RegisterWithEmailAndPasswordPressed
    with DiagnosticableTreeMixin
    implements _RegisterWithEmailAndPasswordPressed {
  const _$_RegisterWithEmailAndPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.registerWithEmailAndPasswordPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult paswordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(paswordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult paswordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult paswordChanged(_PaswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(paswordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult paswordChanged(_PaswordChanged value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory _RegisterWithEmailAndPasswordPressed() =
      _$_RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordPressedCopyWith(
          _SignInWithEmailAndPasswordPressed value,
          $Res Function(_SignInWithEmailAndPasswordPressed) then) =
      __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$SignInWithEmailAndPasswordPressedCopyWithImpl(
      _SignInWithEmailAndPasswordPressed _value,
      $Res Function(_SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailAndPasswordPressed));

  @override
  _SignInWithEmailAndPasswordPressed get _value =>
      super._value as _SignInWithEmailAndPasswordPressed;
}

/// @nodoc
class _$_SignInWithEmailAndPasswordPressed
    with DiagnosticableTreeMixin
    implements _SignInWithEmailAndPasswordPressed {
  const _$_SignInWithEmailAndPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.signInWithEmailAndPasswordPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult paswordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(paswordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult paswordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult paswordChanged(_PaswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(paswordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult paswordChanged(_PaswordChanged value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory _SignInWithEmailAndPasswordPressed() =
      _$_SignInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$SignInWithGooglePressedCopyWith<$Res> {
  factory _$SignInWithGooglePressedCopyWith(_SignInWithGooglePressed value,
          $Res Function(_SignInWithGooglePressed) then) =
      __$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithGooglePressedCopyWith<$Res> {
  __$SignInWithGooglePressedCopyWithImpl(_SignInWithGooglePressed _value,
      $Res Function(_SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithGooglePressed));

  @override
  _SignInWithGooglePressed get _value =>
      super._value as _SignInWithGooglePressed;
}

/// @nodoc
class _$_SignInWithGooglePressed
    with DiagnosticableTreeMixin
    implements _SignInWithGooglePressed {
  const _$_SignInWithGooglePressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.signInWithGooglePressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult paswordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(paswordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult paswordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult paswordChanged(_PaswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(paswordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult paswordChanged(_PaswordChanged value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGooglePressed implements SignInFormEvent {
  const factory _SignInWithGooglePressed() = _$_SignInWithGooglePressed;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool isSubmitting,
      @required bool showErrorMessages,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SignInFormState
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormState'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              bool isSubmitting,
          @required
              bool showErrorMessages,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}

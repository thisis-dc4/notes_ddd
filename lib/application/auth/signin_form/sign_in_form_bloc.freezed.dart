// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  RegisterPressed registerPressed() {
    return const RegisterPressed();
  }

  SignInEmailPressed signInEmailPressed() {
    return const SignInEmailPressed();
  }

  SignInGooglePressed signInGooglePressed() {
    return const SignInGooglePressed();
  }
}

// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String password),
    @required Result registerPressed(),
    @required Result signInEmailPressed(),
    @required Result signInGooglePressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String password),
    Result registerPressed(),
    Result signInEmailPressed(),
    Result signInGooglePressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result signInEmailPressed(SignInEmailPressed value),
    @required Result signInGooglePressed(SignInGooglePressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result signInEmailPressed(SignInEmailPressed value),
    Result signInGooglePressed(SignInGooglePressed value),
    @required Result orElse(),
  });
}

abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String password),
    @required Result registerPressed(),
    @required Result signInEmailPressed(),
    @required Result signInGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerPressed != null);
    assert(signInEmailPressed != null);
    assert(signInGooglePressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String password),
    Result registerPressed(),
    Result signInEmailPressed(),
    Result signInGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result signInEmailPressed(SignInEmailPressed value),
    @required Result signInGooglePressed(SignInGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerPressed != null);
    assert(signInEmailPressed != null);
    assert(signInGooglePressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result signInEmailPressed(SignInEmailPressed value),
    Result signInGooglePressed(SignInGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String password),
    @required Result registerPressed(),
    @required Result signInEmailPressed(),
    @required Result signInGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerPressed != null);
    assert(signInEmailPressed != null);
    assert(signInGooglePressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String password),
    Result registerPressed(),
    Result signInEmailPressed(),
    Result signInGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result signInEmailPressed(SignInEmailPressed value),
    @required Result signInGooglePressed(SignInGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerPressed != null);
    assert(signInEmailPressed != null);
    assert(signInGooglePressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result signInEmailPressed(SignInEmailPressed value),
    Result signInGooglePressed(SignInGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $RegisterPressedCopyWith<$Res> {
  factory $RegisterPressedCopyWith(
          RegisterPressed value, $Res Function(RegisterPressed) then) =
      _$RegisterPressedCopyWithImpl<$Res>;
}

class _$RegisterPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RegisterPressedCopyWith<$Res> {
  _$RegisterPressedCopyWithImpl(
      RegisterPressed _value, $Res Function(RegisterPressed) _then)
      : super(_value, (v) => _then(v as RegisterPressed));

  @override
  RegisterPressed get _value => super._value as RegisterPressed;
}

class _$RegisterPressed implements RegisterPressed {
  const _$RegisterPressed();

  @override
  String toString() {
    return 'SignInFormEvent.registerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String password),
    @required Result registerPressed(),
    @required Result signInEmailPressed(),
    @required Result signInGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerPressed != null);
    assert(signInEmailPressed != null);
    assert(signInGooglePressed != null);
    return registerPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String password),
    Result registerPressed(),
    Result signInEmailPressed(),
    Result signInGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerPressed != null) {
      return registerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result signInEmailPressed(SignInEmailPressed value),
    @required Result signInGooglePressed(SignInGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerPressed != null);
    assert(signInEmailPressed != null);
    assert(signInGooglePressed != null);
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result signInEmailPressed(SignInEmailPressed value),
    Result signInGooglePressed(SignInGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterPressed implements SignInFormEvent {
  const factory RegisterPressed() = _$RegisterPressed;
}

abstract class $SignInEmailPressedCopyWith<$Res> {
  factory $SignInEmailPressedCopyWith(
          SignInEmailPressed value, $Res Function(SignInEmailPressed) then) =
      _$SignInEmailPressedCopyWithImpl<$Res>;
}

class _$SignInEmailPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInEmailPressedCopyWith<$Res> {
  _$SignInEmailPressedCopyWithImpl(
      SignInEmailPressed _value, $Res Function(SignInEmailPressed) _then)
      : super(_value, (v) => _then(v as SignInEmailPressed));

  @override
  SignInEmailPressed get _value => super._value as SignInEmailPressed;
}

class _$SignInEmailPressed implements SignInEmailPressed {
  const _$SignInEmailPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInEmailPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInEmailPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String password),
    @required Result registerPressed(),
    @required Result signInEmailPressed(),
    @required Result signInGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerPressed != null);
    assert(signInEmailPressed != null);
    assert(signInGooglePressed != null);
    return signInEmailPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String password),
    Result registerPressed(),
    Result signInEmailPressed(),
    Result signInGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInEmailPressed != null) {
      return signInEmailPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result signInEmailPressed(SignInEmailPressed value),
    @required Result signInGooglePressed(SignInGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerPressed != null);
    assert(signInEmailPressed != null);
    assert(signInGooglePressed != null);
    return signInEmailPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result signInEmailPressed(SignInEmailPressed value),
    Result signInGooglePressed(SignInGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInEmailPressed != null) {
      return signInEmailPressed(this);
    }
    return orElse();
  }
}

abstract class SignInEmailPressed implements SignInFormEvent {
  const factory SignInEmailPressed() = _$SignInEmailPressed;
}

abstract class $SignInGooglePressedCopyWith<$Res> {
  factory $SignInGooglePressedCopyWith(
          SignInGooglePressed value, $Res Function(SignInGooglePressed) then) =
      _$SignInGooglePressedCopyWithImpl<$Res>;
}

class _$SignInGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInGooglePressedCopyWith<$Res> {
  _$SignInGooglePressedCopyWithImpl(
      SignInGooglePressed _value, $Res Function(SignInGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInGooglePressed));

  @override
  SignInGooglePressed get _value => super._value as SignInGooglePressed;
}

class _$SignInGooglePressed implements SignInGooglePressed {
  const _$SignInGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String password),
    @required Result registerPressed(),
    @required Result signInEmailPressed(),
    @required Result signInGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerPressed != null);
    assert(signInEmailPressed != null);
    assert(signInGooglePressed != null);
    return signInGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String password),
    Result registerPressed(),
    Result signInEmailPressed(),
    Result signInGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInGooglePressed != null) {
      return signInGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result signInEmailPressed(SignInEmailPressed value),
    @required Result signInGooglePressed(SignInGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerPressed != null);
    assert(signInEmailPressed != null);
    assert(signInGooglePressed != null);
    return signInGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result signInEmailPressed(SignInEmailPressed value),
    Result signInGooglePressed(SignInGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInGooglePressed != null) {
      return signInGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInGooglePressed implements SignInFormEvent {
  const factory SignInGooglePressed() = _$SignInGooglePressed;
}

class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool isLoading,
      @required bool showErrorMsg,
      @required Option<Either<AuthFailure, Unit>> resultOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      isLoading: isLoading,
      showErrorMsg: showErrorMsg,
      resultOption: resultOption,
    );
  }
}

// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

mixin _$SignInFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get isLoading;
  bool get showErrorMsg;
  Option<Either<AuthFailure, Unit>> get resultOption;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isLoading,
      bool showErrorMsg,
      Option<Either<AuthFailure, Unit>> resultOption});
}

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
    Object isLoading = freezed,
    Object showErrorMsg = freezed,
    Object resultOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      showErrorMsg:
          showErrorMsg == freezed ? _value.showErrorMsg : showErrorMsg as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isLoading,
      bool showErrorMsg,
      Option<Either<AuthFailure, Unit>> resultOption});
}

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
    Object isLoading = freezed,
    Object showErrorMsg = freezed,
    Object resultOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      showErrorMsg:
          showErrorMsg == freezed ? _value.showErrorMsg : showErrorMsg as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.isLoading,
      @required this.showErrorMsg,
      @required this.resultOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(isLoading != null),
        assert(showErrorMsg != null),
        assert(resultOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isLoading;
  @override
  final bool showErrorMsg;
  @override
  final Option<Either<AuthFailure, Unit>> resultOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, isLoading: $isLoading, showErrorMsg: $showErrorMsg, resultOption: $resultOption)';
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
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.showErrorMsg, showErrorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMsg, showErrorMsg)) &&
            (identical(other.resultOption, resultOption) ||
                const DeepCollectionEquality()
                    .equals(other.resultOption, resultOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(showErrorMsg) ^
      const DeepCollectionEquality().hash(resultOption);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required EmailAddress emailAddress,
          @required Password password,
          @required bool isLoading,
          @required bool showErrorMsg,
          @required Option<Either<AuthFailure, Unit>> resultOption}) =
      _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isLoading;
  @override
  bool get showErrorMsg;
  @override
  Option<Either<AuthFailure, Unit>> get resultOption;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}

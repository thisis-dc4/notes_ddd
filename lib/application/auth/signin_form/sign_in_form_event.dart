part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory SignInFormEvent.registerPressed() = RegisterPressed;
  const factory SignInFormEvent.signInEmailPressed() = SignInEmailPressed;
  const factory SignInFormEvent.signInGooglePressed() = SignInGooglePressed;
}

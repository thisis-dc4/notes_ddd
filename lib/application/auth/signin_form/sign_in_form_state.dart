part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool isLoading,
    @required bool showErrorMsg,
    @required Option<Either<AuthFailure, Unit>> resultOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isLoading: false,
        showErrorMsg: false,
        resultOption: none(),
      );
}

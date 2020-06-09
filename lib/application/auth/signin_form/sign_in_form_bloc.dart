import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:notes_ddd/domain/auth/auth_failure.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';
import 'package:notes_ddd/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade iAuthFacade;

  SignInFormBloc(this.iAuthFacade);

  @override
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        final newState = state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          resultOption: none(),
        );
        yield newState;
      },
      
      passwordChanged: (e) async* {
        final newState = state.copyWith(
          password: Password(e.password),
          resultOption: none(),
        );
        yield newState;
      },
      
      registerPressed: (e) async* {
        yield* _performAuthFacade(
          iAuthFacade.registerWithEmailAndPassword,
        );
      },
      
      signInEmailPressed: (e) async* {
        yield* _performAuthFacade(
          iAuthFacade.signInWithEmailAndPassword,
        );
      },
      
      signInGooglePressed: (e) async* {
        final newState = state.copyWith(
          isLoading: true,
          resultOption: none(),
        );
        yield newState;
        final result = await iAuthFacade.signInWithGoogle();
        yield state.copyWith(
          isLoading: false,
          resultOption: some(result),
        );
      },
    );
  }

  Stream<SignInFormState> _performAuthFacade(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedFunction,
  ) async* {
    Either<AuthFailure, Unit> result;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isLoading: true,
        resultOption: none(),
      );
      result = await forwardedFunction(
        emailAddress: state.emailAddress,
        password: state.password,
      );
      yield state.copyWith(
        isLoading: false,
        resultOption: some(result),
      );
    }
    yield state.copyWith(
      isLoading: false,
      showErrorMsg: true,
      resultOption: optionOf(result),
    );
  }
}

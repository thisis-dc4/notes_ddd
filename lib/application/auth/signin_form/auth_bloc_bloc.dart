import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

part 'auth_bloc_bloc.freezed.dart';

@injectable
class AuthBlocBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final IAuthFacade _authFacade;

  AuthBlocBloc(this._authFacade);
  @override
  AuthBlocState get initialState => const AuthBlocState.initial();

  @override
  Stream<AuthBlocState> mapEventToState(
    AuthBlocEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () => const AuthBlocState.unauthenticated(),
          (a) => const AuthBlocState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthBlocState.unauthenticated();
      },
    );
  }
}

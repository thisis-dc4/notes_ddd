part of 'auth_bloc_bloc.dart';

@freezed
abstract class AuthBlocState with _$AuthBlocState{
  const factory AuthBlocState.initial() = Initial;
  const factory AuthBlocState.authenticated() = Authenticated;
  const factory AuthBlocState.unauthenticated() = Unauthenticated;
}
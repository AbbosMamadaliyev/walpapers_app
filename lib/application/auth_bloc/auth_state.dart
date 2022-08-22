part of 'auth_bloc.dart';

@immutable
@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(true) bool emailValidate,
    @Default(true) bool passwordValidate,
    @Default(false) bool postSignUp,
    @Default(false) bool postSignIn,
    @Default(false) bool postToken,
    @Default(false) bool loginAsGuest,
    @Default(true) bool isSignIn,
  }) = _AuthState;
}

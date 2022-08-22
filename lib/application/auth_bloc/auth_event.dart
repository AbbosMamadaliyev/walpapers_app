part of 'auth_bloc.dart';

@immutable
@freezed
abstract class AuthEvent with _$AuthEvent {
  factory AuthEvent.signInUser({
    required String email,
    required String password,
  }) = _SignInUser;

  factory AuthEvent.signUpUser({
    required String email,
    required String password,
  }) = _SignUpUser;

  factory AuthEvent.loginAsGuest() = _LoginAsGuest;
  factory AuthEvent.changeButton({required String btnFunc}) = _ChangeButton;
  factory AuthEvent.logout() = _Logout;
}

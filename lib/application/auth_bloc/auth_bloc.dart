import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../infrastucture/repositories/auth_repo.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;

  AuthBloc(this.authRepo) : super(_AuthState()) {
    on<_SignInUser>(signInUser);
    on<_SignUpUser>(signUpUser);
    on<_LoginAsGuest>(loginAsGuest);
    on<_ChangeButton>(changeButton);
    on<_Logout>(logout);
  }

  FutureOr<void> signInUser(_SignInUser event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    emit(state.copyWith(postSignIn: false, navigateToHome: false));

    final res = await authRepo.signInUser(event.email, event.password);

    res.fold((l) {
      EasyLoading.dismiss();
      EasyLoading.showError(l.message);

      print('llll: ${l.message}');
      // return  emit();
    }, (r) {
      EasyLoading.dismiss();
      return emit(state.copyWith(postSignIn: true, navigateToHome: true));
    });
  }

  FutureOr<void> signUpUser(_SignUpUser event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    emit(state.copyWith(postSignUp: false, navigateToHome: false));

    final res = await authRepo.signUpUser(event.email, event.password);

    res.fold((l) {
      EasyLoading.dismiss();
      EasyLoading.showError(l.message);
      print('llll: ${l.message}');
      // return  emit();
    }, (r) {
      EasyLoading.dismiss();
      return emit(state.copyWith(postSignUp: true, navigateToHome: true));
    });
  }

  FutureOr<void> loginAsGuest(
      _LoginAsGuest event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginAsGuest: false));
    final res = await authRepo.loginAsGuest();

    res.fold((l) {
      EasyLoading.dismiss();
      EasyLoading.showError(l.message);
      print('llll: ${l.message}');
      // return  emit();
    }, (r) {
      EasyLoading.dismiss();
      EasyLoading.showInfo(r);
      return emit(state.copyWith(loginAsGuest: true, navigateToHome: true));
    });
  }

  FutureOr<void> changeButton(_ChangeButton event, Emitter<AuthState> emit) {
    if (event.btnFunc == 'signIn') {
      emit(state.copyWith(isSignIn: true));
    } else {
      emit(state.copyWith(isSignIn: false));
    }
  }

  FutureOr<void> logout(_Logout event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    emit(state.copyWith(navigateToAuth: false));

    final res = await authRepo.logout();
    res.fold((l) {
      EasyLoading.dismiss();
      EasyLoading.showInfo(l.message);
      return;
    }, (r) {
      EasyLoading.dismiss();
      EasyLoading.showInfo(r);
      return emit(state.copyWith(
          navigateToAuth: true, postSignIn: false, postSignUp: false));
    });
  }
}

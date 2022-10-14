import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walpapers_app/domain/common/token.dart';
import 'package:walpapers_app/domain/facades/auth/auth_facade.dart';
import 'package:walpapers_app/domain/failures/photos_failure.dart';
import 'package:walpapers_app/infrastucture/models/user_model/user_model.dart';

import '../core/exceptions.dart';
import '../services/preference_service.dart';

class AuthRepo implements AuthFacade {
  final PreferenceService _prefference;

  final _auth = FirebaseAuth.instance;

  AuthRepo(this._prefference);

  @override
  Future<Either<PhotosFailure, UserModel>> signInUser(
      String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = result.user;
      print('ressssd: ${result.user}');

      print('token: ${await user!.getIdToken()}');
      final idToken = await user.getIdToken();
      Token token = Token(accessToken: idToken);
      _prefference.setToken(token);

      return right(UserModel.fromFirebase(user));
    } catch (e, s) {
      print('s error signup: $s');
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<PhotosFailure, UserModel>> signUpUser(
      String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = result.user;
      print('token: ${await user!.getIdToken()}');

      final idToken = await user.getIdToken();
      Token token = Token(accessToken: idToken);
      _prefference.setToken(token);

      return right(UserModel.fromFirebase(user));
    } catch (e, s) {
      print('s error signup: $s');
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  Future<void> saveGuest() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('is_login_in', true);
  }

  Stream<UserModel?> get currentUser {
    return _auth
        .authStateChanges()
        .map((user) => user != null ? UserModel.fromFirebase(user) : null);
  }

  @override
  Future<Either<PhotosFailure, String>> logout() async {
    try {
      await _auth.signOut();

      final token = Token(accessToken: '');
      _prefference.setToken(token);
      await _prefference.saveGuest(false);

      return right('Successful logout');
    } catch (e, s) {
      print(s);
      print('s error signup: $s');
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<PhotosFailure, String>> loginAsGuest() async {
    try {
      await _prefference.saveGuest(true);
      return right('You are logged in as a guest');
    } catch (e, s) {
      print(s);
      print('s error login as guest: $s');
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}

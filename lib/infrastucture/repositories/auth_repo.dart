import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walpapers_app/domain/facades/auth/auth_facade.dart';
import 'package:walpapers_app/domain/failures/photos_failure.dart';
import 'package:walpapers_app/infrastucture/models/user_model/user_model.dart';

import '../core/exceptions.dart';

class AuthRepo implements AuthFacade {
  final _auth = FirebaseAuth.instance;

  @override
  Future<Either<PhotosFailure, UserModel>> signInUser(
      String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = result.user;
      return right(UserModel.fromFirebase(user!));
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
      return right(UserModel.fromFirebase(user!));
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
}

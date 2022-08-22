import 'package:dartz/dartz.dart';
import 'package:walpapers_app/infrastucture/models/user_model/user_model.dart';

import '../../failures/photos_failure.dart';

abstract class AuthFacade {
  Future<Either<PhotosFailure, UserModel>> signUpUser(
      String email, String password);

  Future<Either<PhotosFailure, UserModel>> signInUser(
      String email, String password);

  Future<Either<PhotosFailure, String>> logout();
}

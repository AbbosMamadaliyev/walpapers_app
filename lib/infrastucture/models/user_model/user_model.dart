import 'package:firebase_auth/firebase_auth.dart';

import '../photos_model/photo_list_model.dart';

class UserModel {
  String? id;
  List<Photos>? myPhotos;

  UserModel({
    required String id,
    required this.myPhotos,
  });

  UserModel.fromFirebase(User user) {
    id = user.uid;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'myPhotos': myPhotos,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      myPhotos: map['myPhotos'] as List<Photos>,
    );
  }
}

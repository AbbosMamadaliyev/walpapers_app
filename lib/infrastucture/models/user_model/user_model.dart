import 'package:firebase_auth/firebase_auth.dart';

import '../photos_model/photo_list_model.dart';

class UserModel {
  String? id;
  List<MyPhotos>? myPhotos;

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
      myPhotos: map['myPhotos'] as List<MyPhotos>,
    );
  }
}


class MyPhotos{
  int? id;
  String?   url;
  String?   photographer;
  String?   avgColor;
  MySrc?   src;
  String?   alt;

  MyPhotos({
   required this.id,
    required  this.url,
    required this.photographer,
    required this.avgColor,
    required  this.src,
    required  this.alt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'url': this.url,
      'photographer': this.photographer,
      'avg_color': this.avgColor,
      'src': this.src,
      'alt': this.alt,
    };
  }

  factory MyPhotos.fromMap(Map<String, dynamic> map) {
    return MyPhotos(
      id: map['id'] as int,
      url: map['url'] as String,
      photographer: map['photographer'] as String,
      avgColor: map['avg_color'] as String,
      src: map['src'] as MySrc,
      alt: map['alt'] as String,
    );
  }
}

class MySrc{
  String?   original;
  String?   large2x;
  String?   large;
  String?   medium;
  String?   tiny;

  MySrc({
  required  this.original,
    required this.large2x,
    required this.large,
    required  this.medium,
    required  this.tiny,
  });

  Map<String, dynamic> toMap() {
    return {
      'original': original,
      'large2x': large2x,
      'large': large,
      'medium': medium,
      'tiny': tiny,
    };
  }

  factory MySrc.fromMap(Map<String, dynamic> map) {
    return MySrc(
      original: map['original'] as String,
      large2x: map['large2x'] as String,
      large: map['large'] as String,
      medium: map['medium'] as String,
      tiny: map['tiny'] as String,
    );
  }
}
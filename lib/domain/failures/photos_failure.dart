import 'package:freezed_annotation/freezed_annotation.dart';

part 'photos_failure.freezed.dart';

@freezed
abstract class PhotosFailure with _$PhotosFailure {
  const factory PhotosFailure.invalidCredential({
    required String message,
  }) = InvalidCredentials;

  const factory PhotosFailure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory PhotosFailure.unknown({
    required String message,
  }) = Unknown;
}

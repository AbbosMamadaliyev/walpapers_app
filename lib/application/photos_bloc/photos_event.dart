part of 'photos_bloc.dart';

@immutable
@freezed
abstract class PhotosEvent with _$PhotosEvent {
  factory PhotosEvent.getPhotos() = _GetPhotos;
}

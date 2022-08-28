part of 'photos_bloc.dart';

@immutable
@freezed
abstract class PhotosEvent with _$PhotosEvent {
  factory PhotosEvent.getPhotos() = _GetPhotos;
  factory PhotosEvent.searchPhotos({required String query}) = _SearchPhotos;
  factory PhotosEvent.downloadPhoto(
      String url, BuildContext context, CustomColorSet colors) = _DownloadPhoto;
}

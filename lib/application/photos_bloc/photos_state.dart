part of 'photos_bloc.dart';

@immutable
@freezed
abstract class PhotosState with _$PhotosState {
  const factory PhotosState({
    @Default(false) bool hasData,
    @Default(false) bool downloaded,
    @Default(false) bool isGranted,
    @Default(null) PhotoListModel? photosModel,
    @Default([]) List<dynamic>? pathList,
  }) = _PhotosState;
}

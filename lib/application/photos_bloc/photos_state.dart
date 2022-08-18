part of 'photos_bloc.dart';

@immutable
@freezed
abstract class PhotosState with _$PhotosState {
  const factory PhotosState({
    @Default(false) bool hasData,
    @Default(null) PhotoListModel? photosModel,
  }) = _PhotosState;
}

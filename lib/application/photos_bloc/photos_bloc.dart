import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:walpapers_app/infrastucture/models/photos_model/photo_list_model.dart';

import '../../infrastucture/repositories/photos_repo.dart';

part 'photos_bloc.freezed.dart';
part 'photos_event.dart';
part 'photos_state.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final PhotosRepo photosRepo;

  PhotosBloc(this.photosRepo) : super(const _PhotosState()) {
    on<_GetPhotos>(getPhotos);
    on<_SearchPhotos>(searchPhotos);
  }

  FutureOr<void> getPhotos(_GetPhotos event, Emitter<PhotosState> emit) async {
    emit(state.copyWith(hasData: false));
    EasyLoading.show();

    final res = await photosRepo.getPhotos(1, 20);
    res.fold((l) async {
      return EasyLoading.showError(l.message);
    }, (r) {
      EasyLoading.dismiss();
      return emit(state.copyWith(hasData: true, photosModel: r));
    });
  }

  FutureOr<void> searchPhotos(
      _SearchPhotos event, Emitter<PhotosState> emit) async {
    emit(state.copyWith(hasData: false));
    EasyLoading.show();

    final res = await photosRepo.getSearchPhotos(1, 20, event.query);
    res.fold((l) async {
      return EasyLoading.showError(l.message);
    }, (r) {
      EasyLoading.dismiss();
      return emit(state.copyWith(hasData: true, photosModel: r));
    });
  }
}

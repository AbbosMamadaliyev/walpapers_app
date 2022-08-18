import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:walpapers_app/domain/failures/photos_failure.dart';
import 'package:walpapers_app/infrastucture/models/photos_model/photo_list_model.dart';

import '../../domain/facades/photos/photos_facade.dart';
import '../apis/api_service.dart';
import '../core/exceptions.dart';

class PhotosRepo implements PhotosFacade {
  GetPhotosService photosService;

  PhotosRepo(this.photosService);

  @override
  Future<Either<PhotosFailure, PhotoListModel>> getPhotos(
      int page, int perPage) async {
    try {
      final res = await photosService.getPhotos(
        page,
        perPage,
        '563492ad6f91700001000001b2ed8bf8173e40c985da55fced60d851',
      );

      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        print('xattoo');
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    } catch (e) {
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
  Future<Either<PhotosFailure, PhotoListModel>> getSearchPhotos(
    int page,
    int perPage,
    String query,
  ) async {
    try {
      final res = await photosService.searchPhotos(
        page,
        perPage,
        query,
        '563492ad6f91700001000001b2ed8bf8173e40c985da55fced60d851',
      );

      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        print('xattoo');
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}

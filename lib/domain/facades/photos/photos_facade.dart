import 'package:walpapers_app/domain/failures/photos_failure.dart';
import 'package:dartz/dartz.dart';

import '../../../infrastucture/models/photos_model/photo_list_model.dart';

abstract class PhotosFacade {
  Future<Either<PhotosFailure, PhotoListModel>> getPhotos(
      int page, int perPage);
}

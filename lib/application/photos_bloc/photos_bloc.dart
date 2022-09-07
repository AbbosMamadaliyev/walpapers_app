import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:meta/meta.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:walpapers_app/infrastucture/models/photos_model/photo_list_model.dart';

import '../../infrastucture/repositories/photos_repo.dart';
import '../../presentation/style/custom_color_set.dart';

part 'photos_bloc.freezed.dart';

part 'photos_event.dart';

part 'photos_state.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final PhotosRepo photosRepo;

  PhotosBloc(this.photosRepo) : super(const _PhotosState()) {
    on<_GetPhotos>(getPhotos);
    on<_SearchPhotos>(searchPhotos);
    on<_DownloadPhoto>(downloadPhoto);
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
      print('error search photo: ${l.message}');
      return EasyLoading.showError(l.message);
    }, (r) {
      EasyLoading.dismiss();
      return emit(state.copyWith(hasData: true, photosModel: r));
    });
  }

  FutureOr<void> downloadPhoto(
      _DownloadPhoto event, Emitter<PhotosState> emit) async {
    emit(state.copyWith(downloaded: false));

    if (await requestStorage()) {
      EasyLoading.instance.backgroundColor = Colors.white;
      EasyLoading.show(
        indicator: Column(
          children: [
            Text('loading'.tr()),
            SizedBox(height: 16.h),
            const SizedBox(
              height: 80,
              width: 80,
              child: LoadingIndicator(
                  indicatorType: Indicator.ballSpinFadeLoader,
                  colors: [
                    Colors.blue,
                    Colors.green,
                    Colors.yellow,
                    Colors.orangeAccent,
                    Colors.redAccent,
                    Colors.pinkAccent,
                    Colors.deepPurple,
                    Colors.indigo,
                  ],
                  strokeWidth: 2,
                  backgroundColor: Colors.transparent,
                  pathBackgroundColor: Colors.transparent),
            ),
            TextButton(
              onPressed: () {
                EasyLoading.dismiss();
              },
              child: Text(
                'close'.tr(),
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      );

      final tempDir = await getExternalVisibleDir;

      var path = '${tempDir}/${event.url.substring(42)}';

      if (path.length > 32) {
        path = '${path}.jpeg';
      }
      await Dio().download(event.url, path).then((value) {
        EasyLoading.dismiss();

        print('sdsdsdsd');
        return emit(state.copyWith(downloaded: true));
      });

      await GallerySaver.saveImage(path);
    } else {
      EasyLoading.showInfo('No permission');
    }
  }

  Future get getExternalVisibleDir async {
    final dir1 = Platform.isAndroid
        ? await getExternalStorageDirectory() //FOR ANDROID
        : await getApplicationSupportDirectory();
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }

    final directory = Directory('${dir1!.path}/MyPhotos');
    if ((await directory.exists())) {
      print('vv: ${directory.path}');

      return directory.path;
    } else {
      directory.create();
      print('vv2: ${directory.path}');

      return directory.path;
    }
  }

  Future<bool> requestStorage() async {
    if (!await Permission.storage.isGranted) {
      PermissionStatus result = await Permission.storage.request();

      if (result.isGranted) {
        return true;
      } else {
        return false;
      }
    } else {
      return true;
    }
  }
}

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../style/custom_color_set.dart';

class PhotoInnerPageModel extends ChangeNotifier {
  Widget body = Container();
  File? file;
  String fileName = '';
  String errorText = '';
  bool isGranted = true;

  Future<void> saveImgs(
      String url, BuildContext context, CustomColorSet colors) async {
    final tempDir = await getExternalVisibleDir;

    final path = '${tempDir.path}/${url.substring(42)}';

    await Dio().download(url, path).then((value) => EasyLoading.dismiss());

    await GallerySaver.saveImage(path).then(
      (value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: colors.white,
            content: Text(
              'downloaded_to_gall'.tr(),
              style: TextStyle(color: colors.text),
            ),
          ),
        );
      },
    );
  }

  Future get getExternalVisibleDir async {
    if (await Directory('/storage/emulated/0/MyDownloadedImg').exists()) {
      final externalDir = Directory('/storage/emulated/0/MyDownloadedImg');
      return externalDir;
    } else {
      await Directory('/storage/emulated/0/MyDownloadedImg')
          .create(recursive: true);
      final externalDir = Directory('/storage/emulated/0/MyDownloadedImg');
      return externalDir;
    }
  }

  requestStoragePermission() async {
    if (!await Permission.storage.isGranted) {
      PermissionStatus result = await Permission.storage.request();
      if (result.isGranted) {
        isGranted = true;
        notifyListeners();
      } else {
        isGranted = false;
      }
    }
  }
}

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:walpapers_app/application/photos_bloc/photos_bloc.dart';
import 'package:walpapers_app/infrastucture/apis/api_service.dart';
import 'package:walpapers_app/infrastucture/services/preference_service.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

import '../../../infrastucture/models/photos_model/photo_list_model.dart';
import '../../../infrastucture/repositories/photos_repo.dart';
import '../../routes/app_route.dart';

class PhotoInnerPage extends StatefulWidget {
  final Photos photo;

  const PhotoInnerPage({Key? key, required this.photo}) : super(key: key);

  @override
  State<PhotoInnerPage> createState() => _PhotoInnerPageState();
}

class _PhotoInnerPageState extends State<PhotoInnerPage> {
  List<Photos> myList = [];
  late PreferenceService pres;

  @override
  initState() {
    super.initState();
    pres = PreferenceService();
  }

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    final lang = context.locale.languageCode;

    return ThemeWrapper(builder: (context, colors, theme) {
      return BlocListener<PhotosBloc, PhotosState>(
        listenWhen: (oldState, newState) =>
            (oldState.downloaded != newState.downloaded),
        listener: (BuildContext context, state) {
          print('eeeee 111: ${state.downloaded}');

          if (state.downloaded) {
            print('eeeee');
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: colors.white,
                content: Text(
                  'downloaded_to_gall'.tr(),
                  style: TextStyle(color: colors.text),
                ),
              ),
            );
          }
          {
            print('noononon');
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              SizedBox(
                height: (2.6 / 3).sh,
                width: 1.sw,
                child: CachedNetworkImage(
                  imageUrl: widget.photo.src!.portrait ?? "",
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => Center(
                      child: Platform.isAndroid
                          ? const CircularProgressIndicator()
                          : const CupertinoActivityIndicator()),
                  errorWidget: (context, url, error) =>
                      const Center(child: Icon(Icons.error)),
                ),
              ),
              Positioned(
                top: 48.h,
                left: 4.w,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Platform.isAndroid
                        ? Icons.arrow_back
                        : Icons.arrow_back_ios,
                    color: colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 148.h,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    // color: colors.primary,
                    color: fromHex(widget.photo.avgColor ?? '#fffff'),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 60.h,
                        width: 1.sw,
                        margin: EdgeInsets.only(bottom: 16.h),
                        padding: EdgeInsets.only(left: 16.w, top: 8.h),
                        decoration: BoxDecoration(
                          color: fromHex(widget.photo.avgColor ?? '#fffff')
                              .withGreen(-1),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${'photographer'.tr()}: ${widget.photo.photographer!}',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            widget.photo.alt == ''
                                ? const SizedBox()
                                : Text(
                                    '${'info'.tr()}: ${widget.photo.alt!}',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              if (pres.token.accessToken == null ||
                                  pres.token.accessToken!.isEmpty) {
                                dialogRegister(lang);
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('select'.tr()),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            BlocProvider(
                                              create: (context) => PhotosBloc(
                                                  PhotosRepo(GetPhotosService
                                                      .create())),
                                              child: BlocBuilder<PhotosBloc,
                                                      PhotosState>(
                                                  builder: (context, state) {
                                                return TextButton(
                                                  onPressed: () {
                                                    context
                                                        .read<PhotosBloc>()
                                                        .add(
                                                          PhotosEvent
                                                              .downloadPhoto(
                                                                  widget
                                                                      .photo
                                                                      .src!
                                                                      .original!,
                                                                  context,
                                                                  colors),
                                                        );
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    'original'.tr(),
                                                    style: TextStyle(
                                                      color: colors.primary,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                );
                                              }),
                                            ),
                                            BlocProvider(
                                              create: (context) => PhotosBloc(
                                                  PhotosRepo(GetPhotosService
                                                      .create())),
                                              child: BlocBuilder<PhotosBloc,
                                                      PhotosState>(
                                                  builder: (context, state) {
                                                return TextButton(
                                                  onPressed: () {
                                                    context
                                                        .read<PhotosBloc>()
                                                        .add(
                                                          PhotosEvent
                                                              .downloadPhoto(
                                                                  widget
                                                                      .photo
                                                                      .src!
                                                                      .portrait!,
                                                                  context,
                                                                  colors),
                                                        );
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    'portrait'.tr(),
                                                    style: TextStyle(
                                                      color: colors.primary,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                );
                                              }),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('cancel'.tr()),
                                          )
                                        ],
                                      );
                                    });
                              }
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.save_alt,
                                  color: colors.white,
                                ),
                                Text(
                                  'save'.tr(),
                                  style: TextStyle(
                                    color: colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              if (pres.token.accessToken == null ||
                                  pres.token.accessToken!.isEmpty) {
                                dialogRegister(lang);
                              } else {
                                /*/// favorite func
                                final docUser = FirebaseFirestore.instance
                                    .collection('users')
                                    .doc();

                                myList.add(widget.photo);

                                final user =
                                    UserModel(id: docUser.id, myPhotos: myList);
                                final data = user.toMap();

                                // await docUser.set(data);*/

                                Navigator.of(context)
                                    .push(AppRoute.wallpaperPage(
                                  widget.photo.src!.portrait!,
                                  '',
                                  false,
                                ));
                              }
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.wallpaper,
                                  color: colors.white,
                                ),
                                Text(
                                  'set_wallpaper'.tr(),
                                  style: TextStyle(
                                    color: colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              if (pres.token.accessToken == null ||
                                  pres.token.accessToken!.isEmpty) {
                                dialogRegister(lang);
                              } else {
                                await Share.share(
                                    widget.photo.src!.original ?? '');
                              }
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.share,
                                  color: colors.white,
                                ),
                                Text(
                                  'share'.tr(),
                                  style: TextStyle(
                                    color: colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  void dialogRegister(String lang) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('if_use_first_login'.tr()),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('cancel'.tr()),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      AppRoute.authPage(lang), (route) => false);
                },
                child: Text('sign_up'.tr()),
              ),
            ],
          );
        });
  }
}

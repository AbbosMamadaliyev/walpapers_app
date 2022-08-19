import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

import '../../../infrastucture/models/photos_model/photo_list_model.dart';

class PhotoInnerPage extends StatefulWidget {
  final Photos photo;

  const PhotoInnerPage({Key? key, required this.photo}) : super(key: key);

  @override
  State<PhotoInnerPage> createState() => _PhotoInnerPageState();
}

class _PhotoInnerPageState extends State<PhotoInnerPage> {
  bool _loading = false;

  @override
  initState() {
    super.initState();
  }

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, theme) {
      return Scaffold(
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
                  Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios,
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
                            'Potographer: ${widget.photo.photographer!}',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          widget.photo.alt == ''
                              ? const SizedBox()
                              : Text(
                                  'Info: ${widget.photo.alt!}',
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
                          onTap: () async {
                            EasyLoading.instance.backgroundColor = Colors.white;
                            EasyLoading.show(
                              indicator: const SizedBox(
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
                            );

                            final tempDir = await getTemporaryDirectory();
                            final path =
                                '${tempDir.path}/${widget.photo.src!.original!.substring(42)}';

                            await Dio()
                                .download(widget.photo.src!.original!, path)
                                .then((value) => EasyLoading.dismiss());

                            await GallerySaver.saveImage(path).then(
                              (value) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: colors.white,
                                    content: Text(
                                      'Downloaded to Gallery',
                                      style: TextStyle(color: colors.text),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.save_alt,
                                color: colors.white,
                              ),
                              Text(
                                'Save',
                                style: TextStyle(
                                  color: colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: colors.white,
                              ),
                              Text(
                                'Favorite',
                                style: TextStyle(
                                  color: colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Share.share(widget.photo.src!.original ?? '');
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.share,
                                color: colors.white,
                              ),
                              Text(
                                'Share',
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
      );
    });
  }
}

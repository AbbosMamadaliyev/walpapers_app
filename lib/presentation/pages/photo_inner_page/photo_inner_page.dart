import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

import '../../../infrastucture/models/photos_model/photo_list_model.dart';

class PhotoInnerPage extends StatefulWidget {
  final Photos photo;
  const PhotoInnerPage({Key? key, required this.photo}) : super(key: key);

  @override
  State<PhotoInnerPage> createState() => _PhotoInnerPageState();
}

class _PhotoInnerPageState extends State<PhotoInnerPage> {
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
              left: 16.w,
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
                height: 168.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 60.h,
                      width: 1.sw,
                      margin: EdgeInsets.only(bottom: 16.h),
                      decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            print('save');
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
                          onTap: () {},
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

import 'dart:io';

import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

class SetWallpaperPage extends StatefulWidget {
  final String url;
  final bool inFile;
  final String path;

  const SetWallpaperPage(
      {Key? key, required this.url, required this.inFile, required this.path})
      : super(key: key);

  @override
  State<SetWallpaperPage> createState() => _SetWallpaperPageState();
}

class _SetWallpaperPageState extends State<SetWallpaperPage> {
  int pageIndex = 0;
  String screen = 'Lock screen';

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, gridTheme) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: colors.primary,
          title: Text(
            'set_wallpaper'.tr(),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 500.h,
              child: PageView(
                onPageChanged: (val) {
                  setState(() {
                    pageIndex = val;

                    screen = pageIndex == 0 ? 'Lock screen' : 'Home screen';
                  });
                  print('page: $pageIndex');
                },
                children: [
                  Container(
                    // height: 460.h,
                    width: 300.w,
                    margin:
                        EdgeInsets.symmetric(vertical: 28.h, horizontal: 32.w),
                    padding: EdgeInsets.all(16.sm),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: colors.primary,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: widget.inFile
                              ? Image.file(File(widget.path)).image
                              : Image.network(widget.url).image),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 48.h),
                            Text(
                              '12:00',
                              style: TextStyle(
                                fontSize: 42.sp,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Monday, 1 december',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 12.r,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 10.r,
                                  backgroundColor: colors.primary,
                                  child: CircleAvatar(
                                    radius: 8.r,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 26,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // height: 460.h,
                    width: 300.w,
                    margin:
                        EdgeInsets.symmetric(vertical: 28.h, horizontal: 32.w),
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: colors.text,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: widget.inFile
                            ? Image.file(File(widget.path)).image
                            : Image.network(widget.url).image,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.w),
                        Row(
                          children: [
                            Container(
                              height: 48.h,
                              width: 48.h,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.white,
                              ),
                              child: SvgPicture.asset('assets/svgs/google.svg'),
                            ),
                            SizedBox(width: 24.w),
                            Container(
                              height: 48.h,
                              width: 48.h,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6.w, vertical: 10.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.white,
                              ),
                              child: Container(
                                // padding: EdgeInsets.all(8),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Colors.red,
                                ),
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 24.w),
                            Container(
                              height: 48.h,
                              width: 48.h,
                              padding: const EdgeInsets.all(8),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.account_balance_wallet_outlined,
                                size: 32.sm,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.w),
                        Row(
                          children: [
                            Container(
                              height: 48.h,
                              width: 48.h,
                              padding: EdgeInsets.all(6.sm),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.white,
                              ),
                              child:
                                  SvgPicture.asset('assets/svgs/facebook.svg'),
                            ),
                            SizedBox(width: 24.w),
                            Container(
                              height: 48.h,
                              width: 48.h,
                              padding: const EdgeInsets.all(8),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.account_circle_outlined,
                                size: 32.sm,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.w),
                        Container(
                          height: 48.h,
                          width: 48.h,
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.access_alarms,
                            size: 32.sm,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: pageIndex == 0 ? 6.r : 4.r,
                  backgroundColor: pageIndex == 0
                      ? const Color(0xff0b2798)
                      : const Color(0xff4a5da9),
                ),
                SizedBox(width: 6.w),
                CircleAvatar(
                  radius: pageIndex == 1 ? 6.r : 4.r,
                  backgroundColor: pageIndex == 1
                      ? const Color(0xff0b2798)
                      : const Color(0xff4a5da9),
                ),
              ],
            ),
            SizedBox(height: 64.h),
            GestureDetector(
              onTap: () async {
                /// func
                if (pageIndex == 0) {
                  // lock screen

                  setWallpaper(AsyncWallpaper.LOCK_SCREEN);
                } else {
                  // home screen
                  setWallpaper(AsyncWallpaper.HOME_SCREEN);
                }
              },
              child: Container(
                height: 56.h,
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: const Color(0xff071b6b),
                ),
                child: Text(
                  screen,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setWallpaper(AsyncWallpaper.BOTH_SCREENS);
              },
              child: const Text(
                  'Set Wallpaper to Both screens(Lock and Home screens)'),
            ),
          ],
        ),
      );
    });
  }

  String? result;

  void setWallpaper(screen) async {
    print('file path: ${widget.path}');
    print('url: ${widget.url}');
    print('widget.inFile: ${widget.inFile}');
    try {
      final url = '${widget.url}.jpeg';

      EasyLoading.show();

      final pathh = widget.inFile
          ? widget.path.split('/').last.split(']').first.replaceAll('}', '/')
          : widget.url;
      var file = await DefaultCacheManager().getSingleFile(pathh);

      result = await AsyncWallpaper.setWallpaperFromFile(
        filePath: file.path,
        wallpaperLocation: screen,
        goToHome: true,
      )
          ? 'Wallpaper set'
          : 'Failed to get wallpaper.';

      EasyLoading.showInfo(result!);
    } on PlatformException {
      result = 'Failed to get wallpaper.';
      EasyLoading.showInfo(result!);
    }

    print('resultt: $result');
  }
}

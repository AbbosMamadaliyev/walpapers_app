import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

class SetWallpaperPage extends StatefulWidget {
  final String url;
  const SetWallpaperPage({Key? key, required this.url}) : super(key: key);

  @override
  State<SetWallpaperPage> createState() => _SetWallpaperPageState();
}

class _SetWallpaperPageState extends State<SetWallpaperPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, gridTheme) {
      return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              height: 500.h,
              child: PageView(
                onPageChanged: (val) {
                  setState(() {
                    pageIndex = val;
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
                          image: Image.network(widget.url).image),
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
                        color: colors.text
                        // image: DecorationImage(image: F)
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.white,
                              ),
                              child: Container(
                                // padding: EdgeInsets.all(8),
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
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.white,
                              ),
                              child: const Icon(
                                Icons.account_balance_wallet_outlined,
                                size: 32,
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
                              padding: EdgeInsets.all(6),
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
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.white,
                              ),
                              child: const Icon(
                                Icons.account_circle_outlined,
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.w),
                        Container(
                          height: 48.h,
                          width: 48.h,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.access_alarms,
                            size: 32,
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
                  backgroundColor:
                      pageIndex == 0 ? Color(0xff0b2798) : Color(0xff4a5da9),
                ),
                SizedBox(width: 6.w),
                CircleAvatar(
                  radius: pageIndex == 1 ? 6.r : 4.r,
                  backgroundColor:
                      pageIndex == 1 ? Color(0xff0b2798) : Color(0xff4a5da9),
                ),
              ],
            ),
            SizedBox(height: 64.h),
            Container(
              height: 56.h,
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Color(0xff071b6b),
              ),
              child: Text(
                'set_wallpaper'.tr(),
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      );
    });
  }
}

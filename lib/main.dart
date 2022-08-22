import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walpapers_app/domain/common/app_init.dart';
import 'package:walpapers_app/presentation/pages/core/app_widget.dart';

void main() async {
  await AppInit().appInitialized();
  final SharedPreferences _sharedPref = await SharedPreferences.getInstance();

  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) {
        return EasyLocalization(
          path: 'assets/translation',
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('uz', 'UZ'),
            Locale('ru', 'RU'),
          ],
          fallbackLocale: const Locale('en', 'US'),
          child: AppWidget(sharedPref: _sharedPref),
        );
      },
    ),
  );
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../style/change_theme.dart';
import 'home_control.dart';

class AppWidget extends StatelessWidget {
  final SharedPreferences sharedPref;

  const AppWidget({Key? key, required this.sharedPref}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GridTheme.create(sharedPref),
      child: MaterialApp(
        builder: EasyLoading.init(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: const HomeControl(),
      ),
    );
  }
}

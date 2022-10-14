import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:walpapers_app/infrastucture/services/connectivity.dart';
import 'package:walpapers_app/infrastucture/services/preference_service.dart';
import 'package:walpapers_app/presentation/pages/core/splash_screen.dart';

import '../auth_page/auth_page.dart';
import '../main_screen/main_screen.dart';
import 'no_connnection.dart';

class HomeControl extends StatefulWidget {
  final String lang;

  const HomeControl({Key? key, required this.lang}) : super(key: key);

  @override
  State<HomeControl> createState() => _HomeControlState();
}

class _HomeControlState extends State<HomeControl> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait(
        [
          ConnectivityX.create,
          PreferenceService.create,
        ],
      ),
      builder: (context, AsyncSnapshot<List<dynamic>> snap) {
        if (snap.hasData || snap.connectionState == ConnectionState.done) {
          final data = snap.data;
          final PreferenceService pref = data?[1];

          print('app enter, token: ${pref.token.accessToken}');
          return snap.data?[0] != ConnectivityResult.none
              ? pref.token.accessToken == '' || pref.token.accessToken == null
                  ? AuthPage(lang: widget.lang)
                  : MainScreen(lang: widget.lang)
              : const NoConnection();
        } else {
          return const SplashScreen();
        }
      },
    );
  }
}

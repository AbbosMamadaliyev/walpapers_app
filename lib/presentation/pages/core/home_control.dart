import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walpapers_app/application/photos_bloc/photos_bloc.dart';
import 'package:walpapers_app/infrastucture/apis/api_service.dart';
import 'package:walpapers_app/infrastucture/repositories/photos_repo.dart';
import 'package:walpapers_app/infrastucture/services/connectivity.dart';
import 'package:walpapers_app/presentation/pages/core/splash_screen.dart';

import '../auth_page/auth_page.dart';
import '../main_screen/main_screen.dart';
import 'no_connnection.dart';

class HomeControl extends StatefulWidget {
  const HomeControl({Key? key}) : super(key: key);

  @override
  State<HomeControl> createState() => _HomeControlState();
}

class _HomeControlState extends State<HomeControl> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait(
        [ConnectivityX.create],
      ),
      builder: (context, AsyncSnapshot<List<dynamic>> snap) {
        if (snap.hasData || snap.connectionState == ConnectionState.done) {
          return snap.data?[0] != ConnectivityResult.none
              ? MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (_) => PhotosBloc(
                        PhotosRepo(GetPhotosService.create()),
                      )..add(PhotosEvent.getPhotos()),
                    ),
                  ],
                  child: const AuthPage(),
                )
              : const NoConnection();
        } else {
          return const SplashScreen();
        }
      },
    );
  }
}

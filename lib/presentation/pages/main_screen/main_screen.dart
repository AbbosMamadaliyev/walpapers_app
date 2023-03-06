import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:walpapers_app/application/auth_bloc/auth_bloc.dart';
import 'package:walpapers_app/infrastucture/repositories/auth_repo.dart';
import 'package:walpapers_app/infrastucture/repositories/photos_repo.dart';
import 'package:walpapers_app/infrastucture/services/preference_service.dart';
import 'package:walpapers_app/presentation/pages/home_page/home_page.dart';
import 'package:walpapers_app/presentation/pages/main_screen/widgets/app_drawer.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

import '../../../application/photos_bloc/photos_bloc.dart';
import '../../../infrastucture/apis/api_service.dart';
import '../../../infrastucture/services/ad_helper.dart';
import '../../routes/app_route.dart';
import '../categories_page/categories_page.dart';
import '../download_photos_page/download_photo_page.dart';

class MainScreen extends StatefulWidget {
  final String lang;

  const MainScreen({Key? key, required this.lang}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> bodies = [];
  int currentIndex = 0;
  var _radioVal = 2;
  BannerAd? _bannerAd;

  @override
  initState() {
    super.initState();

    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: AdHelper.listener,
    )..load();

    bodies = [
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => AuthBloc(AuthRepo(PreferenceService()))),
          BlocProvider(
              create: (_) => PhotosBloc(PhotosRepo(GetPhotosService.create()))
                ..add(PhotosEvent.getPhotos())),
        ],
        child: const MyHomePage(),
      ),
      CategoriesPage(
        bannerAd: _bannerAd,
      ),
      BlocProvider(
        create: (context) => PhotosBloc(PhotosRepo(GetPhotosService.create()))
          ..add(PhotosEvent.getDownloadedPhotos()),
        child: const DownloadedPhotosPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, theme) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: colors.primary,
          title: const Text('Pixel'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(AppRoute.searchPage());
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        drawer: AppDrawer(lang: widget.lang),
        body: bodies[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: colors.primary,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home), label: 'home'.tr()),
            BottomNavigationBarItem(
                icon: const Icon(Icons.category), label: 'categories'.tr()),
            BottomNavigationBarItem(
                icon: const Icon(Icons.save_alt_outlined),
                label: 'downloads'.tr()),
          ],
        ),
      );
    });
  }
}

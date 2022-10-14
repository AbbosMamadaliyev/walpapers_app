import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walpapers_app/application/auth_bloc/auth_bloc.dart';
import 'package:walpapers_app/application/photos_bloc/photos_bloc.dart';
import 'package:walpapers_app/infrastucture/apis/api_service.dart';
import 'package:walpapers_app/infrastucture/repositories/auth_repo.dart';
import 'package:walpapers_app/infrastucture/repositories/photos_repo.dart';
import 'package:walpapers_app/infrastucture/services/preference_service.dart';
import 'package:walpapers_app/presentation/pages/auth_page/auth_page.dart';
import 'package:walpapers_app/presentation/pages/categories_page/category_results/category_results.dart';
import 'package:walpapers_app/presentation/pages/main_screen/main_screen.dart';
import 'package:walpapers_app/presentation/pages/photo_inner_page/photo_inner_page.dart';

import '../../infrastucture/models/photos_model/photo_list_model.dart';
import '../pages/search_page/search_page.dart';
import '../pages/set_wallpaper_page/set_wallpaper_page.dart';

class AppRoute {
  static PageRoute authPage(String lang) => MaterialPageRoute(
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (_) => AuthBloc(AuthRepo(PreferenceService()))),
          ],
          child: AuthPage(lang: lang),
        ),
      );

  static PageRoute mainPage(String lang) => MaterialPageRoute(
        builder: (_) => MainScreen(lang: lang),
      );

  static PageRoute photoInnerPage(Photos photo) => MaterialPageRoute(
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (BuildContext context) => PhotosBloc(
                PhotosRepo(GetPhotosService.create()),
              ),
            ),
            BlocProvider(
              create: (BuildContext context) => AuthBloc(
                AuthRepo(PreferenceService()),
              ),
            ),
          ],
          child: PhotoInnerPage(photo: photo),
        ),
      );

  static PageRoute categoryResults({required String query}) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider<PhotosBloc>(
          create: (_) => PhotosBloc(PhotosRepo(GetPhotosService.create()))
            ..add(
              PhotosEvent.searchPhotos(query: query),
            ),
          child: CategoryResultsPage(category: query),
        ),
      );

  static PageRoute searchPage() => MaterialPageRoute(
        builder: (_) => BlocProvider<PhotosBloc>(
          create: (_) => PhotosBloc(PhotosRepo(GetPhotosService.create())),
          child: const SearchPage(),
        ),
      );

  static PageRoute wallpaperPage(String url, String path, bool inFile) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider<PhotosBloc>(
          create: (_) => PhotosBloc(PhotosRepo(GetPhotosService.create())),
          child: SetWallpaperPage(
            url: url,
            path: path,
            inFile: inFile,
          ),
        ),
      );
}

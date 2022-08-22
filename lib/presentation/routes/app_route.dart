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

class AppRoute {
  // static const String mainScreen = '/main_screen';
  // static const String auth = '/auth_page';

  // static PageRoute<dynamic>? onGenerateRoute(
  //     {required BuildContext context,
  //     required RouteSettings settings,
  //     hasNetworkConnection}) {
  //   switch (settings.name) {
  //     case signUp:
  //     case bottomNavBar:
  //       return getBottomNavBar();
  //   }
  //   return null;
  // }

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
}

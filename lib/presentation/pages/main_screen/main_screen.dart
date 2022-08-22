import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walpapers_app/application/auth_bloc/auth_bloc.dart';
import 'package:walpapers_app/infrastucture/repositories/auth_repo.dart';
import 'package:walpapers_app/infrastucture/repositories/photos_repo.dart';
import 'package:walpapers_app/infrastucture/services/preference_service.dart';
import 'package:walpapers_app/presentation/pages/home_page/home_page.dart';
import 'package:walpapers_app/presentation/pages/main_screen/widgets/app_drawer.dart';

import '../../../application/photos_bloc/photos_bloc.dart';
import '../../../infrastucture/apis/api_service.dart';
import '../categories_page/categories_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> bodies = [];
  int currentIndex = 0;

  @override
  initState() {
    super.initState();

    bodies = [
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => AuthBloc(AuthRepo(PreferenceService()))),
          BlocProvider(
              create: (_) => PhotosBloc(PhotosRepo(GetPhotosService.create()))
                ..add(PhotosEvent.getPhotos())),
        ],
        child: MyHomePage(),
      ),
      CategoriesPage(),
      Text('rer'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: AppDrawer(),
      body: bodies[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.save_alt_outlined), label: 'Downloads'),
        ],
      ),
    );
  }
}

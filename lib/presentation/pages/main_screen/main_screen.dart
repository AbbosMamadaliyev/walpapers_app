import 'package:flutter/material.dart';
import 'package:walpapers_app/presentation/pages/home_page/home_page.dart';

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
      MyHomePage(),
      CategoriesPage(),
      Text('rer'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

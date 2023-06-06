import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travel_app/provider/home_screen_bottom_index.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const String routeName = '/main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<HomeScreenBottomIndex>().currentIndex,
        children: [
          HomeScreen(),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.pink,
          ),
        ],
      ),
      bottomNavigationBar: buildBottomBar(context),
    );
  }

  SalomonBottomBar buildBottomBar(BuildContext context) {
    return SalomonBottomBar(
      backgroundColor: Colors.white,
      currentIndex: context.watch<HomeScreenBottomIndex>().currentIndex,
      onTap: (i) => context.read<HomeScreenBottomIndex>().updateIndex(i),
      items: [
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: Theme.of(context).primaryColor,
          unselectedColor: Theme.of(context).primaryColor.withOpacity(0.2),
        ),

        /// Likes
        SalomonBottomBarItem(
          icon: Icon(Icons.favorite),
          title: Text("Likes"),
          selectedColor: Theme.of(context).primaryColor,
          unselectedColor: Theme.of(context).primaryColor.withOpacity(0.2),
        ),

        /// Search
        SalomonBottomBarItem(
          icon: Icon(Icons.cases_rounded),
          title: Text("Case"),
          selectedColor: Theme.of(context).primaryColor,
          unselectedColor: Theme.of(context).primaryColor.withOpacity(0.2),
        ),

        /// Profile
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile"),
          selectedColor: Theme.of(context).primaryColor,
          unselectedColor: Theme.of(context).primaryColor.withOpacity(0.2),
        ),
      ],
    );
  }
}

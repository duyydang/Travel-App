
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/home_screen_bottom_index.dart';
import 'package:travel_app/provider/intro_page_provider.dart';
import 'package:travel_app/representation/screens/main_screen.dart';
import 'package:travel_app/routes.dart';
import 'core/constants/color_constants.dart';
import 'representation/screens/splash_screen.dart';

void main() async{

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ListenCurrentPage()),
    ChangeNotifierProvider(create: (context) => HomeScreenBottomIndex())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
      ),
      routes: routes,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreen(),
    );
  }
}

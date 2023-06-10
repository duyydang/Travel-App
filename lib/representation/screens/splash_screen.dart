import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representation/screens/main_screen.dart';
import 'package:travel_app/representation/screens/intro_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = '/splash_screen';

  Future waitSplashScreen(BuildContext context) async {
    bool isFirstTime;

    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isFirstTime = prefs.getBool('isFirstTime') ?? true;
    //Check isFirstTime run app
    if (isFirstTime) {
      isFirstTime = false;
      await prefs.setBool('isFirstTime', isFirstTime);
      await Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushNamed(context, IntroScreen.routeName);
      },);
    } else {
      Navigator.pushNamed(context, MainScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    //FIXME: uncomment if done App
    // waitSplashScreen(context);
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.backgroundSplash,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned.fill(
          child: ImageHelper.loadFromAsset(AssetHelper.circleSplash,
              fit: BoxFit.fitWidth),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representation/screens/intro_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = '/splash_screen';
  Future waitSplashScreen(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, IntroScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    waitSplashScreen(context);
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.backgroundSplash,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
              AssetHelper.circleSplash,
              fit: BoxFit.fitWidth),
        ),
      ],
    );
  }
}

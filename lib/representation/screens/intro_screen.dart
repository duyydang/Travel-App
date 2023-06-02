import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dismension_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  static const String routeName = '/intro_screen';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          buildItemPageView(
            AssetHelper.intro1,
            'Book a flight',
            'Found a flight that matches your destination and schedule? Book it instantly.',
            CrossAxisAlignment.end,
          ),
          buildItemPageView(
            AssetHelper.intro2,
            'Find a hotel room',
            'Select the day, book your room. We give you the best price.',
            CrossAxisAlignment.center,
          ),
          buildItemPageView(
            AssetHelper.intro3,
            'Enjoy your trip',
            'Easy discovering new places and share these between your friends and travel together.',
            CrossAxisAlignment.start,
          ),
        ],
      ),
    );
  }

  Widget buildItemPageView(
      String image, String content, String desc, CrossAxisAlignment alignment) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: alignment,
      children: [
        ImageHelper.loadFromAsset(
          image,
          height: 375,
        ),
        Container(
          padding: const EdgeInsets.all(kMediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                content,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: kMediumPadding,
              ),
              Text(desc),
              const SizedBox(
                height: kMediumPadding * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                      controller: _pageController,
                      // PageController
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 8,
                        dotWidth: 10,
                        activeDotColor: Colors.orange
                      ),
                      // your preferred effect
                      onDotClicked: (index) {}),
                  ButtonWidget(() => null, 'Next'),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

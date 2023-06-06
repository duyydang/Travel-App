import 'package:flutter/material.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AppBarContainerWidget(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../core/constants/dismension_constants.dart';

class ButtonWidget extends StatelessWidget {
  Function()? onTap;
  String title;

  ButtonWidget(this.onTap, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
      decoration: const BoxDecoration(
          borderRadius: kDefaultBorderRadius, color: Color(0xff8F67E8)),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

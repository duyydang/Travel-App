import 'package:flutter/material.dart';

import '../../core/constants/dismension_constants.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final double horizontal;

  const ButtonWidget({this.onTap, required this.title,required this.horizontal, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: horizontal),
        decoration: const BoxDecoration(
            borderRadius: kDefaultBorderRadius, color: Color(0xff8F67E8)),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

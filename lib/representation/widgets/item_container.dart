import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dismension_constants.dart';

// This is Item for Screen
// Ex: Select Location, Calendar,...
class ItemContainer extends StatelessWidget {
  const ItemContainer(
      {super.key, required this.title, required this.text, required this.icon, this.onTap});

  final String title;
  final String text;
  final Widget icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: kBottomBarIconSize),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  text,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

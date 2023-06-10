import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';

class AppBarContainerWidget extends StatelessWidget {
  const AppBarContainerWidget(
      {super.key, required this.child,this.title,this.automaticallyImplyLeading=false});

  final Widget child;
  final Widget? title;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          child: AppBar(
            title: title,
            toolbarHeight: 100,
            centerTitle: false,
            automaticallyImplyLeading: automaticallyImplyLeading,
            elevation: 0,
            backgroundColor: ColorPalette.backgroundScaffoldColor,
            flexibleSpace: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                      )),
                ),
                Positioned(
                  child: ImageHelper.loadFromAsset(AssetHelper.icoOvalTop),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ImageHelper.loadFromAsset(AssetHelper.icoOvalBottom),
                ),
              ],
            ),
          ),
        ),
        child
      ],
    );
  }
}

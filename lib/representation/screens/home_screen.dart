import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dismension_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarContainerWidget(
        title: Container(
          margin: EdgeInsets.only(left: 30, right: 45,bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hi, James!',
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Where are you going next?',
                      style: TextStyle(fontSize: 13))
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_active_outlined,
                      size: 30,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(top: 2),
                    child: ImageHelper.loadFromAsset(
                      AssetHelper.person,
                      width: 45,
                      height: 45,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 45, right: 45, top: 160),
          child: Column(
            children: const [
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.black,size: 30,),
                    hintText: 'Search your destination'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

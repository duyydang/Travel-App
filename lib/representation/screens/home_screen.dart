import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarContainerWidget(
        //AppBar
        title: Container(
          margin: const EdgeInsets.only(left: 30, right: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
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
                    icon: const Icon(
                      Icons.notifications_active_outlined,
                      size: 30,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(top: 2),
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
        //Search & Body
        child: Container(
          margin: const EdgeInsets.only(left: 45, right: 45, top: 160),
          child: Column(
            children: [
              // Search Bar
              TextField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    hintText: 'Search your destination'),
              ),
              const SizedBox(height: 10,),
              //Row Item Hotel,Flights, All
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //TODO: add Navigator.push sreen
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28, vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.amberAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          child:
                              ImageHelper.loadFromAsset(AssetHelper.icoHotel)),
                      const Text('Hotels')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28, vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20)),
                          child:
                              ImageHelper.loadFromAsset(AssetHelper.icoPlane)),
                      const Text('Flights')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          decoration: BoxDecoration(
                              color: Colors.greenAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          child: ImageHelper.loadFromAsset(
                              AssetHelper.icoHotelPlane,
                              width: 40,
                              height: 40)),
                      const Text('All')
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

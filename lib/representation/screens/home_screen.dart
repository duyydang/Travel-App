import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representation/screens/hotel_booking_screen.dart';
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
              const SizedBox(
                height: 10,
              ),
              //Row Item Hotel,Flights, All
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildItemList(
                      icon: ImageHelper.loadFromAsset(
                        AssetHelper.icoHotel,
                        width: 40,
                        height: 40,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, HotelBookingScreen.routeName);
                      },
                      text: 'Hotel'),
                  buildItemList(
                      icon: ImageHelper.loadFromAsset(
                        AssetHelper.icoPlane,
                        width: 40,
                        height: 40,
                      ),
                      onTap: () {},
                      text: 'Flights'),
                  buildItemList(
                      icon: ImageHelper.loadFromAsset(
                        AssetHelper.icoHotelPlane,
                        width: 40,
                        height: 40,
                      ),
                      onTap: () {},
                      text: 'All'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItemList({required Widget icon, required Function() onTap, required String text}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
              decoration: BoxDecoration(
                  color: Colors.amberAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
              child: icon),
          Text(text)
        ],
      ),
    );
  }
}

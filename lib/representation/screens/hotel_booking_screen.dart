import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';
import 'package:travel_app/representation/widgets/item_container.dart';

class HotelBookingScreen extends StatelessWidget {
  const HotelBookingScreen({super.key});

  static const String routeName = '/home_booking_screen';

  @override
  Widget build(BuildContext context) {

    //Get Time for Select Calendar
    String formatTime(){
      DateTime now = DateTime.now();
      DateTime end = now.add(Duration(days: 6));

      String startDateString = DateFormat('d MMMM').format(now);
      String endDateString = DateFormat('d MMMM yyyy').format(end);

      return '$startDateString - $endDateString';
    }
    // Screen
    return Scaffold(
      body: AppBarContainerWidget(
        automaticallyImplyLeading: true,
        child: Container(
          margin: const EdgeInsets.only(left: 45, right: 45, top: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Hotel Booking',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Choose your favorite hotel and enjoy the service',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ItemContainer(
                title: 'Destination',
                text: 'South Korea',
                icon: ImageHelper.loadFromAsset(AssetHelper.icoLocation,
                    width: 32, height: 32),
              ),
              ItemContainer(
                title: 'Select Date',
                text: formatTime(),
                icon: ImageHelper.loadFromAsset(AssetHelper.icoCalendal,
                    width: 32, height: 32),
              ),
              ItemContainer(
                title: 'Guest and Room',
                text: '2 Guest, 1 Room',
                icon: ImageHelper.loadFromAsset(AssetHelper.icoBed,
                    width: 32, height: 32),
              ),
              // This button Search
              const ButtonWidget(
                title: 'Search',
                horizontal: 130,
              )
            ],
          ),
        ),
      ),
    );
  }
}

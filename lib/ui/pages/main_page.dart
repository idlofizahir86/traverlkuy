import 'package:flutter/material.dart';
import 'package:travelkuy/shared/theme.dart';
import 'package:travelkuy/ui/pages/home_page.dart';
import 'package:travelkuy/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtomNavigationItem(
                imageUrl: 'assets/images/icon_home.png',
                isSelected: true,
              ),
              CustomButtomNavigationItem(
                imageUrl: 'assets/images/icon_booking.png',
              ),
              CustomButtomNavigationItem(
                imageUrl: 'assets/images/icon_card.png',
              ),
              CustomButtomNavigationItem(
                imageUrl: 'assets/images/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}

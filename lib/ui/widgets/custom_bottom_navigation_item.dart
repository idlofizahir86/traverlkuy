import 'package:flutter/material.dart';
import 'package:travelkuy/shared/theme.dart';

class CustomButtomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomButtomNavigationItem({
    Key? key,
    required this.imageUrl,
    this.isSelected = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Container(
            height: 2,
            width: 30,
            decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransparentColor,
              borderRadius: BorderRadius.circular(
                defaultRadius,
              ),
            ))
      ],
    );
  }
}

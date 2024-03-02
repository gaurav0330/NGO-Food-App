
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double width;
  final double height;
  final double icon_width;
  final double icon_height;
  final String text;
  final Color backgroundColor;
  final TextStyle textstyle;
  final double elevation;
  final Image icon;

  const CustomCard({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.backgroundColor,
    required this.textstyle,
    required this.elevation,
    required this.icon,
    required this.icon_width,
    required this.icon_height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.lightBlue,
      elevation: elevation, // Adds a shadow to the card
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: [0.0, 0.95],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF2A8DEC),
                Color(0xF2B2C9D7)
              ]),
        ),
        alignment: Alignment.center, // Aligns the child to the center
        child: Stack(
          children: [
            Positioned(
              height: icon_height,
              width: icon_width,
              top: 2,
              right: 5,
              child: GestureDetector(
                onTap: () {},
                child: icon,
              ),
            ),
            Positioned(
              bottom: 2,
              child: Text(
                text, // Directly using text without string interpolation
                style: textstyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
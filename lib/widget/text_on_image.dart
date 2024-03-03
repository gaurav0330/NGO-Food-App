import 'package:flutter/material.dart';

class TextOnImage extends StatelessWidget {
  final String imagePath;
  final String text;

  TextOnImage({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 200, // Set a fixed width
          height: 200, // Set a fixed height
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 16, // Adjust the position as needed
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.black.withOpacity(0.6), // Adjust the color and opacity as needed
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
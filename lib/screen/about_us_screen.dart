import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 340,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/about/about.jpeg'),
                fit: BoxFit.scaleDown,
                alignment: FractionalOffset(0.0, 0.15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Material(
              elevation: 4, // Increase the elevation
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                height: 50, // Increase the height
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 20,
                    ),
                    border: InputBorder.none, // Remove border
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Material(
              elevation: 4, // Increase the elevation
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                height: 50, // Increase the height
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 20,
                    ),
                    border: InputBorder.none, // Remove border
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Card(
            elevation: 4, // Add elevation to the card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0), // Set the border radius of the card
            ),
            child: Material(
              borderRadius: BorderRadius.circular(40.0),
              elevation: 10, // Add elevation to the container
              child: Container(
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    transform: GradientRotation(188.15 * 3.142 / 180),
                    colors: [
                      Color(0xFF0BFFA7),
                      Color(0xFF1096CC),
                      Color(0xFF152BF1),
                    ],
                    stops: [0.001, 0.287, 1.0],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
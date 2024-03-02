
import 'package:flutter/material.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});
  // gcahuurtaivya.png
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            child: Center(
              child: Text(
                "Order Status",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily:'Roboto',
                  // Enclose the font family name in quotes

                ),
              ),
            ),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/gcahuurtaivya.png'),
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
            ),
          ),
          Column(
            children: [
              Text("Your Order is Picked",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "10am, 9 Feb 2024",
                style: TextStyle(
                  fontSize: 18,

                ),
              )

            ],
          ),
          Column(
            children: [
              Text("Agent is on the way",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
              Card(
                elevation: 4, // Add elevation to the card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0), // Set the border radius of the card
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(40.0),
                  elevation: 10, // Add elevation to the container
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFF5162FF)

                    ),
                    child: Center(
                      child: Text(
                        'Tracking',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
          Column(
            children: [
              Text("Order Reached Charity",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "10am, 9 Feb 2024",
                style: TextStyle(
                  fontSize: 18,

                ),
              )

            ],
          ),

          Card(
            elevation: 4, // Add elevation to the card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0), // Set the border radius of the card
            ),
            child: Material(
              borderRadius: BorderRadius.circular(40.0),
              elevation: 10, // Add elevation to the container
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
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
                    'Confirm Delivery',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
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

import 'package:flutter/material.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});
  // gcahuurtaivya.png
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 15,),
            Divider(height: 15,),
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
            Divider(height: 15,),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/orderstatus/gadiwala.png'),
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Divider(height: 15,),
            Row(
              children: [
                Image.asset('assets/orderstatus/1st.png',height: 50,width: 50),
                SizedBox(width: 10,),
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
              ],
            ),
            Divider(height: 15,),
            Row(
              children: [
                Image.asset('assets/orderstatus/2nd.png',height: 60,width: 60),
                SizedBox(width: 10,),
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
              ],
            ),
            Divider(height: 15,),
            Row(
              children: [
                Image.asset('assets/orderstatus/3rd.png',height: 35,width: 35),
                SizedBox(height: 10,),
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
              ],
            ),
            Divider(height: 15,),
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
      ),
    );
  }
}
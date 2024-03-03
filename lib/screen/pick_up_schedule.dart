import 'package:flutter/material.dart';

class PickUpSchdule extends StatelessWidget {
  const PickUpSchdule({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/pickupschedule/porgi.png'),
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset(0.0, 0.15),
                    )
                ),
              ),
              Container(
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    "Pick-Up Schedule",
                    style: TextStyle(
                        fontSize: 32,
                        fontFamily:'Roboto',
                        // Enclose the font family name in quotes
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: Text(
                  "A  volunteer  will  reach  you \nto  pick  your  foods",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily:'Roboto',
                    // Enclose the font family name in quotes

                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 330,
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xFFDDE0FF),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: const Column(
                  children: [
                    Align(
                      child: Text(
                        "Volunteer Details",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily:'Roboto',
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20,top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily:'Roboto',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20,top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "9152366542",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily:'Roboto',
          
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20,top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Near by you - 2kms",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily:'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
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
                    width: double.infinity,
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
                        'DONE',
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
        ),
      ),
    );
  }
}
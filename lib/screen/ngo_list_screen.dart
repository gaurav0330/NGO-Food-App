import 'package:flutter/material.dart';

class NgoList extends StatelessWidget {
  const NgoList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue, // Specify the border color here
                    width: 2, // Specify the border width here
                  ),
                ),
                child: Column(
                  children: [
                    Text("NGO Name",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 93,
                      width: 288,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 30,),
                    Text("description about the ngo \n......... ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 60,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFF5162FF)
                              ),
                              child: Center(
                                child: Text(
                                  'Call',
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
                        Text(
                          "View details",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blueAccent,
                            decoration: TextDecoration.combine(
                              [TextDecoration.underline],
                            ),
                            decorationColor: Colors.blueAccent,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
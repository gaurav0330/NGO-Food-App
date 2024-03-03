import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  bool isYellow = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              height: 160,
              width: 370,
              decoration: BoxDecoration(
                color: Color(0xFF152BF1),
                borderRadius: BorderRadius.circular(50),


              ),
              child: Center(
                child: Text(
                  "Feedback",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                  ),
                ),
              ),
            ),


            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 20,top: 50,bottom: 0),
                  child: Text("Name",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 0,bottom: 0),
              child: Material(
                elevation: 4, // Increase the elevation
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: 50, // Increase the height
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
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

            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 20,top: 10,bottom: 0),
                  child: Text("Email",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 0),
              child: Material(
                elevation: 4, // Increase the elevation
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: 50, // Increase the height
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email Address',
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

            //   Share your experience in scaling
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 20,top: 50,bottom: 0),
                  child: Text("Share your experience in scaling",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20, top: 5, bottom: 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isYellow = !isYellow; // Toggle isYellow
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: isYellow ? Colors.yellow : Colors.black26,
                      size: 30, // Increase the size of the icon
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isYellow = !isYellow; // Toggle isYellow
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: isYellow ? Colors.yellow : Colors.black26,
                      size: 30, // Increase the size of the icon
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isYellow = !isYellow; // Toggle isYellow
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: isYellow ? Colors.yellow : Colors.black26,
                      size: 30, // Increase the size of the icon
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isYellow = !isYellow; // Toggle isYellow
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: isYellow ? Colors.yellow : Colors.black26,
                      size: 30, // Increase the size of the icon
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isYellow = !isYellow; // Toggle isYellow
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: isYellow ? Colors.yellow : Colors.black26,
                      size: 30, // Increase the size of the icon
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
              child: Material(
                elevation: 4, // Increase the elevation
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  constraints: BoxConstraints(minHeight: 200), // Set minimum height
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Add your comments... ',
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
                    maxLines: null, // Allow multiple lines
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                children: [
                  SizedBox(width: 100,),
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,right: 20,top: 10,bottom: 0),
                        child: Text("Cancel",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueAccent
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4, // Add elevation to the card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Set the border radius of the card
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      elevation: 10, // Add elevation to the container
                      child: Container(
                        height: 50,
                        width: 100,
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
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
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
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
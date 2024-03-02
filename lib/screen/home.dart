import 'package:flutter/material.dart';
import 'package:ngo/widget/customcard.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        toolbarHeight: 60,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset('assets/home/account.png', height: 53, width: 52),
          onPressed: () {
            // Add your left button functionality here
          },
        ),
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: Image.asset('assets/home/phone.png', height: 33, width: 37),
            onPressed: () {
              // Add your right button functionality here
            },
            color: Colors.white,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlue),
                  child: Image.asset('assets/home/person.png',
                      fit: BoxFit.fill), // Path to your image asset
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Donation till now !!",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 10, // Adjust the height as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Make edges round
                  color: Colors.grey[300], // Background color of the container
                ),
                child: const LinearProgressIndicator(
                  value: 0.5, // 50% progress
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.blue), // Custom color
                  backgroundColor: Colors
                      .transparent, // Make background transparent to see container's background color
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(
                    width: 170,
                    height: 100,
                    text: 'Guidelines',
                    backgroundColor: Colors.lightBlue,
                    textstyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    elevation: 4,
                    icon: Image.asset('assets/home/guild.png'),
                    icon_width: 50,
                    icon_height: 50,
                  ),
                  CustomCard(
                    width: 170,
                    height: 100,
                    text: 'Donate\n Food',
                    backgroundColor: Colors.lightBlue,
                    textstyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    elevation: 4,
                    icon: Image.asset(
                      'assets/home/donate.png',
                    ),
                    icon_width: 103,
                    icon_height: 85,
                  ),
                ],
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                      width: 170,
                      height: 100,
                      text: 'Map',
                      backgroundColor: Colors.lightBlue,
                      textstyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      elevation: 4,
                      icon: Image.asset('assets/home/map.png'),
                      icon_width: 111,
                      icon_height: 100,
                    ),
                    CustomCard(
                      width: 170,
                      height: 100,
                      text: 'View Your\n Previous History',
                      backgroundColor: Colors.lightBlue,
                      textstyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      elevation: 4,
                      icon: Image.asset('assets/home/history.png'),
                      icon_width: 57,
                      icon_height: 53,
                    )
                  ],
                ),
              ),
              CustomCard(
                width: double.maxFinite,
                height: 100,
                text: 'We Are on Our Way',
                backgroundColor: Colors.lightBlue,
                textstyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                elevation: 4,
                icon: Image.asset('assets/home/bus.png'),
                icon_width: 76,
                icon_height: 51,
              )
            ],
          ),
        ),
      ),
    );
  }
}


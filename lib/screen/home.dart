import 'package:flutter/material.dart';

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
        leading:IconButton(
              icon: const Icon(Icons.person,color: Colors.white),
              onPressed: () {
                // Add your left button functionality here
              },
        ),
        title: Text('Home'),
        actions: [
        IconButton(
            icon: const Icon(Icons.call),
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
              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlue
                    // image: DecorationImage(
                    //   // image: AssetImage('assets/image.jpg'), // Path to your image asset
                    //   fit: BoxFit.cover,
                    // ),
                  ),
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
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Custom color
                  backgroundColor: Colors.transparent, // Make background transparent to see container's background color
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Card(
                    elevation: 4, // Adds a shadow to the card
                    child: Container(
                      width: 170,
                      height: 100,
                      decoration: const BoxDecoration(
                          color: Colors.lightBlue
                        // image: DecorationImage(
                        // image: AssetImage('assets/background_image.jpg'), // Path to your background image asset
                        // fit: BoxFit.cover,
                        // ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
                        child: Text(
                          'Guidlines', // Text to be displayed over the background image
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4, // Adds a shadow to the card
                    child: Container(
                      width: 170,
                      height: 100,
                      decoration: const BoxDecoration(
                          color: Colors.lightBlue
                        // image: DecorationImage(
                        // image: AssetImage('assets/background_image.jpg'), // Path to your background image asset
                        // fit: BoxFit.cover,
                        // ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          ' Donate\n Food', // Text to be displayed over the background image
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],

              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 4, // Adds a shadow to the card
                      child: Container(
                        width: 170,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Colors.lightBlue
                          // image: DecorationImage(
                          // image: AssetImage('assets/background_image.jpg'), // Path to your background image asset
                          // fit: BoxFit.cover,
                          // ),
                        ),
                        child: const Center(
                          child: Text(
                            'Map', // Text to be displayed over the background image
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4, // Adds a shadow to the card
                      child: Container(
                        width: 170,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Colors.lightBlue
                          // image: DecorationImage(
                          // image: AssetImage('assets/background_image.jpg'), // Path to your background image asset
                          // fit: BoxFit.cover,
                          // ),
                        ),
                        child: const Center(
                          child: Text(
                            'View Your\n Previous History', // Text to be displayed over the background image
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
              ),
              Card(
                elevation: 4, // Adds a shadow to the card
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Colors.lightBlue
                    // image: DecorationImage(
                    // image: AssetImage('assets/background_image.jpg'), // Path to your background image asset
                    // fit: BoxFit.cover,
                    // ),
                  ),
                  child: const Center(
                    child: Text(
                      'We Are on Our Way', // Text to be displayed over the background image
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
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

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight;
  final Widget leftButton;
  final Widget rightButton;

  const CustomAppBar({super.key,
    required this.appBarHeight,
    required this.leftButton,
    required this.rightButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: appBarHeight,
      color: Colors.blue, // Customize app bar color as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: leftButton,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: rightButton,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}

class CustomCard extends StatelessWidget{
  final double elevation;
  final double width;
  final double height;
  late  Colors colors;


  CustomCard( this.colors ,{ required this.elevation, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
   return Card(
     elevation: 4, // Adds a shadow to the card
     child: Container(
       width: width,
       height: height,
       decoration: BoxDecoration(
         color: colors,
         // image: DecorationImage(
         // image: AssetImage('assets/background_image.jpg'), // Path to your background image asset
         // fit: BoxFit.cover,
         // ),
       ),
       child: const Center(
         child: Text(
           'We Are on Our Way', // Text to be displayed over the background image
           style: TextStyle(
             color: Colors.white,
             fontSize: 20,
             fontWeight: FontWeight.bold,
           ),
         ),
       ),
     ),
   );
  }
}

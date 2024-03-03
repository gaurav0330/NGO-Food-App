import 'package:flutter/material.dart';
import 'package:ngo/screen/feedback_screen.dart';
import 'package:ngo/widget/drawer_item_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreen1State();
}

class _DrawerScreen1State extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/drawer/back.png'),
                Positioned(
                  top: 80,
                  left: 80,
                  child: ClipOval(
                    child: CircleAvatar(
                      radius: 50, // Adjust the radius as needed
                      backgroundImage: AssetImage('assets/pickupschedule/porgi.png'), // Replace with your profile image asset
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 80,
                  child: Text(
                    'Arjun Gupta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(height: 10,),
                Positioned(
                  top: 210,
                  left: 70,
                  child: Text(
                    '91 XXXXXXXXX',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(height: 10,),
              ],
            ),
            GestureDetector(child: DrawerItem(startIcon: Icons.account_circle_sharp, text: 'Edit Profile')),
            GestureDetector(child: DrawerItem(text: 'Contact', startIcon: Icons.phone)),
            GestureDetector(onTap:() =>Navigator.push(context, MaterialPageRoute(builder: (context) => FeedbackScreen(),)),child: DrawerItem(text: 'Feedback', startIcon: Icons.phone)),
            GestureDetector(child: DrawerItem(text: 'Setting', startIcon: Icons.settings)),
            GestureDetector(child: DrawerItem(text: 'Notification', startIcon: Icons.notifications)),
            GestureDetector(child: DrawerItem(text: 'Log Out', startIcon: Icons.login)),
          ],
        ),
      ),
    );
  }
}

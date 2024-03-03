import 'package:flutter/material.dart';
import 'package:ngo/screen/auth/login.dart';
import 'package:ngo/uitls/global.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  late TextStyle _style = TextStyle(
    color: Colors.grey[400],
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/auth/img.png'),
                Text('Sign Up',style: headingText.copyWith(color: Colors.white,fontSize: 35,fontFamily: 'main'),)
              ],
            ),
            SizedBox(height: 20,),
            _templatelogIn(hintText: 'First Name'),
            _templatelogIn(hintText: 'Last Name'),
            _templatelogIn(hintText: 'Mobile No. '),
            _templatelogIn(hintText: 'First Name'),

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
                      'Sign up',
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
            SizedBox(height: 15,),
            Text('I already have account'),
            GestureDetector(
                onTap:()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),)),
                child: Text('Sign In',style: TextStyle(
                    color: Colors.red,fontWeight: FontWeight.w700,fontSize: 20
                ),))
          ],
        ),
      ),
    );
  }
}

class _templatelogIn extends StatelessWidget {
final String hintText;
  const _templatelogIn({super.key, required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        elevation: 4, // Increase the elevation
        borderRadius: BorderRadius.circular(40.0),
        child: Container(
          height: 50, // Increase the height
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
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
    );
  }
}

import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
   MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final buttonColor = Color(0xFF6D9FEB);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/auth/map.png'),
              ),
              SizedBox(height: 10,),
              Text('Pickup Address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              Card(
                color: Colors.white38,
                elevation: 3,
                child: ListTile(
                  leading: Icon(Icons.location_on,size: 30),
                  title: Text('Anna Nagar, 3rd Street'),
                  subtitle: Row(children: [
                    Icon(Icons.add),
                    SizedBox(width: 5,),
                    Text('Pickup Instruction?'),
                  ],),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 50)), // Adjust width and height
                backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              ),onPressed: (){}, child: Text("I'm here",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w500),)),
            ],
          ),
        ),
      ),
    );
  }
}

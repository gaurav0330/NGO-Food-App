import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final IconData startIcon;
  final String text;
  const DrawerItem({super.key, required this.startIcon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Icon(startIcon,color: Colors.blue,size: 45),
        Positioned(top: 10,
            left: 60,
            child: Text(text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),)),
        Align(alignment: Alignment.topRight,
            child: Text(' > ',style:TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 35),))
      ],),
    );
  }
}

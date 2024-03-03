import 'package:flutter/material.dart';

class GuidanceScreen extends StatelessWidget {
  const GuidanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of guidelines
    List<String> guidelines = [
      "All containers shall be securely packed and sealed;",
      "The exterior of the cans shall be free from major dents, rust, perforations, and seam distortions;",
      "Cans shall be free from leaks;",
      "An enameled container that has become chipped and rusty;",
      "A copper or brass container which is not with proper tins;",
      "Containers made of aluminum not conforming in chemical composition to IS:20 specification for Cast Aluminium & Aluminium Alloy for utensils or IS:21 specification for Wrought Aluminium and Aluminium Alloy for utensils.",
      "Containers made of plastic materials should conform to the following Indian Standards Specification, used as appliances or receptacles for packing or storing whether partly or wholly, food articles namely:",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Guidance'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: guidelines.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.check_circle_outline),
              title: Text(guidelines[index]),
            );
          },
        ),
      ),
    );
  }
}
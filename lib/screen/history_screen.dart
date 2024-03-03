import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Donation History'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max, // Adjust to fit content
          children: [
            SizedBox(height: 15), // Spacing from the top
            Padding(
              padding: const EdgeInsets.only(left:double.minPositive/2),
              child: SizedBox( // Removed Stack for simplicity unless you need overlapping widgets
                width: 200, // Specify width for the pie chart
                height: 200, // Specify height for the pie chart
                child: Stack(
                  children: [
                    PieChart(
                      PieChartData(
                        centerSpaceRadius: 60,
                        sectionsSpace: 0,
                        sections: [
                          PieChartSectionData(
                            color: Colors.red,
                            value: 40,
                            title: '',
                            radius: 50,
                          ),
                          PieChartSectionData(
                            color: Colors.green,
                            value: 30,
                            title: '',
                            radius: 50,
                          ),
                        ],
                      ),
                    ),
                    Center(child: Text("Food Donation",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),))
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Spacing between pie chart and container
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.grey[200], // Light grey color for the container
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Name: John Doe',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Phone: +123 456 7890',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Home/components/grid_items.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reports',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          ...List.generate(
            freeIcons.length,
            (index) => ReportCard(
              gridItems: freeIcons[index],
              switchWidget: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ReportCard extends StatelessWidget {
  ReportCard({
    Key? key,
    required this.gridItems,
    required this.switchWidget,
  }) : super(key: key);
  final GridItems gridItems;
  Widget switchWidget;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.white,
      child: Row(
        children: [
          Image(
            image: AssetImage(gridItems.icon),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              gridItems.title,
              style: GoogleFonts.poppins(
                color: Colors.black,
              ),
            ),
          ),
          Spacer(),
          switchWidget,
        ],
      ),
    );
  }
}

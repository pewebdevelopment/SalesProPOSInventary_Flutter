import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/tab_buttons.dart';

import '../../constant.dart';

class DueScreen extends StatefulWidget {
  const DueScreen({Key? key}) : super(key: key);

  @override
  _DueScreenState createState() => _DueScreenState();
}

class _DueScreenState extends State<DueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sales List',
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
          SizedBox(
            height: 10.0,
          ),
          Hero(
            tag: 'TabButton',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabButton(
                  background: kDarkWhite,
                  text: kMainColor,
                  title: 'Sales',
                  press: () {
                    Navigator.pushNamed(context, '/SalesList');
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                TabButton(
                  background: kDarkWhite,
                  text: kMainColor,
                  title: 'Paid',
                  press: () {
                    Navigator.pushNamed(context, '/Paid');
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                TabButton(
                  background: kMainColor,
                  text: Colors.white,
                  title: 'Due',
                  press: () {
                    Navigator.pushNamed(context, '/Due');
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          DataTable(
            headingRowColor:
            MaterialStateColor.resolveWith((states) => kDarkWhite),
            columns: <DataColumn>[
              DataColumn(
                label: Container(
                  width: 100.0,
                  child: Text(
                    'Date',
                  ),
                ),
              ),
              DataColumn(
                label: Container(
                  width: 60.0,
                  child: Text(
                    'Payment',
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Balance',
                ),
              ),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    Column(
                      children: [
                        Text(
                          'Ibne Riead',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          'July 10, 2021',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            color: kGreyTextColor,
                            fontSize: 10.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  DataCell(Text('Cash'),),
                  DataCell(Column(
                    children: [
                      Text('Due \$23.90',style: GoogleFonts.poppins(
                        color: Color(0xFFFF6E16),
                      ),),
                      Text('\$3975',style: GoogleFonts.poppins(
                        color: kGreyTextColor,
                      ),),
                    ],
                  ),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

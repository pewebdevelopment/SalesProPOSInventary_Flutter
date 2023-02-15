import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/tab_buttons.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';
import 'individual_sales_list.dart';

class DueListIndividual extends StatefulWidget {
  const DueListIndividual({Key? key}) : super(key: key);

  @override
  _DueListIndividualState createState() => _DueListIndividualState();
}

class _DueListIndividualState extends State<DueListIndividual> {
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
                    SalesListIndividual().launch(context);
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
                    DueListIndividual().launch(context);
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
                  width: MediaQuery.of(context).size.width/2,
                  child: Text(
                    'Date',
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
                          'Clearence',
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
                  DataCell(
                    Column(
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
          Spacer(),
          DataTable(
            headingRowColor:
            MaterialStateColor.resolveWith((states) => kDarkWhite),
            columns: <DataColumn>[
              DataColumn(
                label: Container(
                  width: 60.0,
                  child: Text(
                    'Total:',
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  '800',
                ),
              ),
              DataColumn(
                label: Text(
                  '500',
                ),
              ),
              DataColumn(
                label: Text(
                  '900',
                ),
              ),
            ], rows: [],
          ),
        ],
      ),
    );
  }
}

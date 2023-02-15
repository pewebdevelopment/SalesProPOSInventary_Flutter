import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'add_return.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class ReturnList extends StatefulWidget {
  const ReturnList({Key? key}) : super(key: key);

  @override
  _ReturnListState createState() => _ReturnListState();
}

class _ReturnListState extends State<ReturnList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Return List',
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    horizontalMargin: 0,
                    headingRowColor:
                        MaterialStateColor.resolveWith((states) => kDarkWhite),
                    columns: <DataColumn>[
                      DataColumn(
                        label: Text(
                          'Name',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Invoice',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'QTY',
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
                            Wrap(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Riead',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '02/05/2021',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                            color: kGreyTextColor,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DataCell(
                            Text('123213'),
                          ),
                          DataCell(
                            Text('2'),
                          ),
                          DataCell(
                            Text('\$50'),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                    '',
                  ),
                ),
                DataColumn(
                  label: Text(
                    '5',
                  ),
                ),
                DataColumn(
                  label: Text(
                    '\$900',
                  ),
                ),
              ],
              rows: [],
            ),
            ButtonGlobalWithoutIcon(
              buttontext: 'Add Return',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: (){
                AddReturn().launch(context);
              },
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

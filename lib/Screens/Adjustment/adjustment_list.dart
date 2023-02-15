import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import '../Adjustment/add_adjustment.dart';
import '../Online%20Store/Store/product_cart.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';


class AdjustmentList extends StatefulWidget {
  const AdjustmentList({Key? key}) : super(key: key);

  @override
  _AdjustmentListState createState() => _AdjustmentListState();
}

class _AdjustmentListState extends State<AdjustmentList> {
  final dateController = TextEditingController();
  int inititalValue = 1;
  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adjustment List',
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DataTable(
                      horizontalMargin: 0.0,
                      columnSpacing: 20,
                      headingRowColor:
                      MaterialStateColor.resolveWith((states) => kDarkWhite),
                      columns: <DataColumn>[
                        DataColumn(
                          label: Text(
                            'Warehouse',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Product',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Stock',
                          ),
                        ),
                        DataColumn(
                          label: Padding(
                            padding: EdgeInsets.only(left: 40.0),
                            child: Text(
                              'Qty',
                            ),
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
                                      'Warehouse 1',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ), ),
                            DataCell(
                              Text(
                                'Smart Watch',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            DataCell(
                              Text('25 kg'),
                            ),
                            DataCell(
                              Row(
                                children: [
                                  RoundIconButton(
                                      icon: Icons.remove,
                                      onPressed: () {
                                        setState(() {
                                          inititalValue > 1
                                              ? inititalValue -= 1
                                              : inititalValue = 1;
                                        });
                                      }),
                                  SizedBox(
                                    width: 28.0,
                                    height: 28.0,
                                    child: Container(
                                      color: Colors.white,
                                      child: Center(
                                        child: Text(
                                          inititalValue.toString(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  RoundIconButton(
                                      icon: Icons.add,
                                      onPressed: () {
                                        setState(() {
                                          inititalValue += 1;
                                        });
                                      }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            ButtonGlobalWithoutIcon(
              buttontext: 'Add Adjustment',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: () {
                AddAdjustment().launch(context);
              },
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

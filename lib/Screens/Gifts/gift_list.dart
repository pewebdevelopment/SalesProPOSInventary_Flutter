import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'add_gift.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class GiftList extends StatefulWidget {
  const GiftList({Key? key}) : super(key: key);

  @override
  _GiftListState createState() => _GiftListState();
}

class _GiftListState extends State<GiftList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gift List',
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
                    headingRowColor:
                    MaterialStateColor.resolveWith((states) => kDarkWhite),
                    columns: <DataColumn>[
                      DataColumn(
                        label: Container(
                          width: 120.0,
                          child: Text(
                            'Product Name',
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Quantity',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Action',
                        ),
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(
                              Text(
                                'Smart Watch',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,),
                              ),
                          ),
                          DataCell(
                            Text('25'),
                          ),
                          DataCell(
                            Row(
                              children: [
                                IconButton(onPressed: null, icon: Icon(Icons.backpack,color: Colors.black,),),
                                IconButton(onPressed: null,padding: EdgeInsets.only(right: 30.0), icon: Icon(Icons.print,color: Colors.black,),),
                              ],
                            ),
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
                    '800',
                  ),
                ),
              ],
              rows: [],
            ),
            ButtonGlobalWithoutIcon(
              buttontext: 'Add Gift',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: () {
                AddGift().launch(context);
              },
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

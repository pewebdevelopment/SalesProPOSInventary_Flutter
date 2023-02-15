import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'add_supplier.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class SupplierList extends StatefulWidget {
  const SupplierList({Key? key}) : super(key: key);

  @override
  _SupplierListState createState() => _SupplierListState();
}

class _SupplierListState extends State<SupplierList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Supplier List',
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowColor:
                  MaterialStateColor.resolveWith((states) => kDarkWhite),
              columns: <DataColumn>[
                DataColumn(
                  label: Text(
                    'Date',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Number',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Balance',
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
                      Column(
                        children: [
                          Text(
                            'Ibne Riead',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            'July 10, 2021',
                            style: GoogleFonts.poppins(
                              color: kGreyTextColor,
                              fontSize: 10.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    DataCell(
                      Text('01767 542558'),
                    ),
                    DataCell(
                      Text('\$3975'),
                    ),
                    DataCell(
                      Row(
                        children: [
                          GestureDetector(
                            child: Icon(Icons.edit),
                            onTap: null,
                          ),
                          GestureDetector(
                            child: Icon(Icons.delete_forever_outlined),
                            onTap: null,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          ButtonGlobalWithoutIcon(
            buttontext: 'Add Supplier',
            buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
            onPressed: () {
              AddSupplier().launch(context);
            },
            buttonTextColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

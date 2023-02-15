import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'add_warehouse.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class WareHouseList extends StatefulWidget {
  const WareHouseList({Key? key}) : super(key: key);

  @override
  _WareHouseListState createState() => _WareHouseListState();
}

class _WareHouseListState extends State<WareHouseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Warehouse List',
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
                  label: Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: Text(
                      'Name',
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Number',
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text(
                        'Ibne Riead',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    DataCell(
                      Text('01767 542558'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          ButtonGlobalWithoutIcon(
            buttontext: 'Add Warehouse',
            buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
            onPressed: () {
              AddWarehouse().launch(context);
            },
            buttonTextColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

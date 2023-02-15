import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'add_branch.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class BranchList extends StatefulWidget {
  const BranchList({Key? key}) : super(key: key);

  @override
  _BranchListState createState() => _BranchListState();
}

class _BranchListState extends State<BranchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Branch List',
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
                          width: MediaQuery.of(context).size.width/2.5,
                          child: Text(
                            'Branch Name',
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
                              'Branch One',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          DataCell(
                            Text('+880 1767 432553'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            ButtonGlobalWithoutIcon(
              buttontext: 'Add Branch',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: () {
                AddBranch().launch(context);
              },
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

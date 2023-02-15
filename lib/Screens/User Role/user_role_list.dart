import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'add_user.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class UserRoleList extends StatefulWidget {
  const UserRoleList({Key? key}) : super(key: key);

  @override
  _UserRoleListState createState() => _UserRoleListState();
}

class _UserRoleListState extends State<UserRoleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Role List',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.person_add_alt),
          ),
        ],
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
                        label: Container(
                          width: 100,
                          child: Text(
                            'Name',
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Container(
                          width: 80,
                          child: Text(
                            'User Type',
                          ),
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
                                          '+880 1767 432558',
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
                            Text('Super Admin'),
                          ),
                          DataCell(
                            Row(
                              children: [
                                Icon(Icons.edit),
                                SizedBox(width: 10.0,),
                                Icon(Icons.delete_forever_outlined),
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
            ButtonGlobalWithoutIcon(
              buttontext: 'Add User',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: (){
                AddUser().launch(context);
              },
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

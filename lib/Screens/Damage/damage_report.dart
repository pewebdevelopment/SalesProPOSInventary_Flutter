import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'add_damage.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class DamageReport extends StatefulWidget {
  const DamageReport({Key? key}) : super(key: key);

  @override
  _DamageReportState createState() => _DamageReportState();
}

class _DamageReportState extends State<DamageReport> {
  final dateController = TextEditingController();

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
          'Damage Report',
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
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppTextField(
                          textFieldType: TextFieldType.NAME,
                          readOnly: true,
                          onTap: () async {
                            var date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            dateController.text =
                                date.toString().substring(0, 10);
                          },
                          controller: dateController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              floatingLabelBehavior:
                              FloatingLabelBehavior.always,
                              labelText: 'Start Date',
                              hintText: 'Pick Start Date'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppTextField(
                          textFieldType: TextFieldType.OTHER,
                          readOnly: true,
                          onTap: () async {
                            var date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            dateController.text =
                                date.toString().substring(0, 10);
                          },
                          controller: dateController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              floatingLabelBehavior:
                              FloatingLabelBehavior.always,
                              labelText: 'End Date',
                              hintText: 'Pick End Date'),
                        ),
                      ),
                    ),
                  ],
                ),
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
                              Column(
                                children: [
                                  Text(
                                    'Smart Watch',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Text(
                                    'Fashion Store',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                      color: kGreyTextColor,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),),
                          DataCell(
                            Text('25'),
                          ),
                          DataCell(
                            Text('50'),
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
                    '30',
                  ),
                ),
                DataColumn(
                  label: Text(
                    '900',
                  ),
                ),
              ],
              rows: [],
            ),
            ButtonGlobalWithoutIcon(
              buttontext: 'Add Damage',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: () {
                AddDamage(catName: 'Laptop',).launch(context);
              },
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

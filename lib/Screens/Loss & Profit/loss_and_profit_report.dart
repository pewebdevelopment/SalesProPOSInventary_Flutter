import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'add_loss_report.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class LossAndProfitReport extends StatefulWidget {
  const LossAndProfitReport({Key? key}) : super(key: key);

  @override
  _LossAndProfitReportState createState() => _LossAndProfitReportState();
}

class _LossAndProfitReportState extends State<LossAndProfitReport> {
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
          'Loss&Profit Report',
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
                    horizontalMargin: 0,
                    columnSpacing: 35,
                    headingRowColor:
                    MaterialStateColor.resolveWith((states) => kDarkWhite),
                    columns: <DataColumn>[
                      DataColumn(
                        label: Container(
                          width: 100.0,
                          child: Text(
                              'Product Name',
                            ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Purchase',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Sales',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Profit',
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
                            Text('\$140'),
                          ),
                          DataCell(
                            Text('\$150'),
                          ),
                          DataCell(
                            Text('\$10'),
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
              ],
              rows: [],
            ),
            ButtonGlobalWithoutIcon(
              buttontext: 'Add Report',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: () {
                AddLossReport(catName: 'Laptop',).launch(context);
              },
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Sales/sales_list_with_date.dart';
import '../Sales/sales_screen.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class LedgerDetails extends StatefulWidget {
  const LedgerDetails({Key? key}) : super(key: key);

  @override
  _LedgerDetailsState createState() => _LedgerDetailsState();
}

class _LedgerDetailsState extends State<LedgerDetails> {
  final dateController = TextEditingController();

  String dropdownValue = 'Last 30 Days';

  DropdownButton<String> getCategory() {
    List<String> dropDownItems = [
      'Last 7 Days',
      'Last 30 Days',
      'Current year',
      'Last Year'
    ];
    return DropdownButton(
      items: dropDownItems.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: dropdownValue,
      onChanged: (value) {
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }

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
          'Read',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CircleAvatar(backgroundImage: AssetImage('images/profile.png'),),
          ),
        ],
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
                        child: Container(
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: kGreyTextColor),
                          ),
                          child: Center(child: getCategory()),
                        ),
                      ),
                    ),
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
                    headingRowColor:
                    MaterialStateColor.resolveWith((states) => kDarkWhite),
                    columns: <DataColumn>[
                      DataColumn(
                        label: Container(
                          width: 80.0,
                          child: Text(
                            'Details',
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Debit',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Credit',
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
                              Text(
                                'Buy a Book',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                              onTap: (){
                                LedgerDetails().launch(context);
                              }
                          ),
                          DataCell(
                            Text('25'),
                          ),
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            SaleProducts(catName: 'Laptop',).launch(context);
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: kGreyTextColor,
                                size: 28,
                              ),
                              Text(
                                'Sales',
                                style: GoogleFonts.poppins(
                                  fontSize: 20.0,
                                  color: kGreyTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            SalesListDate().launch(context);
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.list_alt,
                                color: kMainColor,
                                size: 28,
                              ),
                              Text(
                                'Sales List',
                                style: GoogleFonts.poppins(
                                  fontSize: 20.0,
                                  color: kMainColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

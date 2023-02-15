import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/tab_buttons.dart';
import '../../constant.dart';

class CustomerPaymentHistory extends StatefulWidget {
  const CustomerPaymentHistory({Key? key}) : super(key: key);

  @override
  _CustomerPaymentHistoryState createState() => _CustomerPaymentHistoryState();
}

class _CustomerPaymentHistoryState extends State<CustomerPaymentHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment History',
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
          Hero(
            tag: 'TabButton',
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabButtonSmall(
                    background: kMainColor,
                    text: Colors.white,
                    title: 'Customer',
                    press: () {
                      Navigator.pushNamed(context, '/Transaction');
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  TabButtonSmall(
                    background: kDarkWhite,
                    text: kMainColor,
                    title: 'Supplier',
                    press: () {
                      Navigator.pushNamed(context, '/SupplierTransaction');
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  TabButtonSmall(
                    background: kDarkWhite,
                    text: kMainColor,
                    title: 'Dealer',
                    press: () {
                      Navigator.pushNamed(context, '/DealerTransaction');
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  TabButtonSmall(
                    background: kDarkWhite,
                    text: kMainColor,
                    title: 'Vendor',
                    press: () {
                      Navigator.pushNamed(context, '/VendorTransaction');
                    },
                  ),
                ],
              ),
            ),
          ),
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
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            'July 10, 2021',
                            textAlign: TextAlign.start,
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
                          GestureDetector(child: Icon(Icons.edit),onTap: null,),
                          GestureDetector(child: Icon(Icons.delete_forever_outlined),onTap: null,),
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
    );
  }
}

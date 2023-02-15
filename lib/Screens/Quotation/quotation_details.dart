import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/tab_buttons.dart';

import '../../constant.dart';

class QuotationDetails extends StatefulWidget {
  const QuotationDetails({Key? key}) : super(key: key);

  @override
  _QuotationDetailsState createState() => _QuotationDetailsState();
}

class _QuotationDetailsState extends State<QuotationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quotation Details',
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
          Icon(Icons.person_add_alt),
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(child: Text('Add Promo Code'), value: "/addPromoCode"),
              PopupMenuItem(
                  child: Text('Add Discount'), value: "/addDiscount"),
              PopupMenuItem(child: Text('Cancel All Product'), value: "/settings"),
              PopupMenuItem(child: Text('Vat Doesn\'t Apply'), value: "/settings"),
            ],
            onSelected: (value) {
              Navigator.pushNamed(context, '$value');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Hero(
            tag: 'TabButton',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabButton(
                  background: kMainColor,
                  text: Colors.white,
                  title: 'Sales',
                  press: () {
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                TabButton(
                  background: kDarkWhite,
                  text: kMainColor,
                  title: 'Paid',
                  press: () {
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                TabButton(
                  background: kDarkWhite,
                  text: kMainColor,
                  title: 'Due',
                  press: () {
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Smart Watch x 1',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Smart Watch x 1',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Smart Watch x 1',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Smart Watch x 1',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: kGreyTextColor.withOpacity(0.5),
            thickness: 0.5,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Subtotal',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Discount',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: kGreyTextColor.withOpacity(0.5),
            thickness: 0.5,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: kDarkWhite,
            child: Padding(
              padding:
              const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$243.90',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

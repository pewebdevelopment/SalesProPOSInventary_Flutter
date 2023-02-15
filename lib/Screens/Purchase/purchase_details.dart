import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'purchase_list.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class PurchaseDetails extends StatefulWidget {
  const PurchaseDetails({Key? key}) : super(key: key);

  @override
  _PurchaseDetailsState createState() => _PurchaseDetailsState();
}

class _PurchaseDetailsState extends State<PurchaseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Purchase Details',
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
            color: kGreyTextColor,
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
            color: kGreyTextColor,
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
          Spacer(),
          ButtonGlobal(
            iconWidget: Icons.arrow_forward,
            buttontext: 'Continue',
            iconColor: Colors.white,
            buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
            onPressed: (){
              PurchaseList().launch(context);
            },
          ),
        ],
      ),
    );
  }
}

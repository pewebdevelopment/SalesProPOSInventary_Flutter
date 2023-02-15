import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'add_bank.dart';
import '../../constant.dart';
import 'package:nb_utils/nb_utils.dart';

import 'bank_details.dart';

class BankList extends StatefulWidget {
  const BankList({Key? key}) : super(key: key);

  @override
  _BankListState createState() => _BankListState();
}

class _BankListState extends State<BankList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bank List',
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
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
            child: GestureDetector(
              onTap: (){
                BankDetails().launch(context);
              },
              child: BankCard(
                iconWidget: Image(
                  image: AssetImage('images/boa.png'),
                ),
                bankName: 'Bank Of America',
                date: 'June 7, 2021',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
            child: BankCard(
              iconWidget: Image(
                image: AssetImage('images/usaa.png'),
              ),
              bankName: 'USAA',
              date: 'June 7, 2021',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
            child: BankCard(
              iconWidget: Image(
                image: AssetImage('images/usb.png'),
              ),
              bankName: 'US Bank',
              date: 'June 7, 2021',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
            child: BankCard(
              iconWidget: Image(
                image: AssetImage('images/oneb.png'),
              ),
              bankName: 'One Bank',
              date: 'June 7, 2021',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
            child: BankCard(
              iconWidget: Image(
                image: AssetImage('images/city.png'),
              ),
              bankName: 'City Bank',
              date: 'June 7, 2021',
            ),
          ),
          Divider(
            thickness: 1,
            color: kGreyTextColor,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Total Balance:',
                style: GoogleFonts.poppins(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Text(
                '\$5452',
                style: GoogleFonts.poppins(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
          Spacer(),
          ButtonGlobalWithoutIcon(
            buttontext: 'Add Bank',
            buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
            onPressed: (){
              AddBank().launch(context);
            },
            buttonTextColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class BankCard extends StatelessWidget {
  BankCard({
    Key? key,
    required this.iconWidget,
    required this.bankName,
    required this.date,
  }) : super(key: key);

  Widget iconWidget;
  final String bankName;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 100.0,
          child: iconWidget,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bankName,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                ),
              ),
              Text(
                date,
                style: GoogleFonts.poppins(
                  color: kGreyTextColor,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          '\$450',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: 30.0,
        ),
      ],
    );
  }
}

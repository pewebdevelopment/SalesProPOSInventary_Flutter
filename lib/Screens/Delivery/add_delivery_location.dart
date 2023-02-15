
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import '../../GlobalComponents/tab_buttons.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class AddDelivery extends StatefulWidget {
  const AddDelivery({Key? key}) : super(key: key);

  @override
  _AddDeliveryState createState() => _AddDeliveryState();
}

class _AddDeliveryState extends State<AddDelivery> {
  String initialCountry = 'Bangladesh';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Address',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      controller: TextEditingController(), // Optional
                      textFieldType: TextFieldType.NAME,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'First Name',
                        labelStyle: GoogleFonts.poppins(
                          color: Colors.black,
                        ),
                        hintText: 'Ibne',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      controller: TextEditingController(), // Optional
                      textFieldType: TextFieldType.NAME,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Last Name',
                        labelStyle: GoogleFonts.poppins(
                          color: Colors.black,
                        ),
                        hintText: 'Rieyad',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppTextField(
                controller: TextEditingController(), // Optional
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Email Address',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.black,
                  ),
                  hintText: 'ibneriead@gmail.com',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppTextField(
                controller: TextEditingController(), // Optional
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Phone Number',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.black,
                  ),
                  hintText: '+1253 5456 1145',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppTextField(
                textFieldType: TextFieldType.NAME,
                readOnly: true,
                controller: TextEditingController(text: initialCountry),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: kGreyTextColor),
                  ),
                  labelText: 'Country',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.black,
                  ),
                  hintText: 'Bangladesh',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                textFieldType: TextFieldType.NAME,
                maxLines: 2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Address',
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.black,
                    ),
                    hintText: 'Placentia, California(CA), 92870'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Hero(
              tag: 'TabButton',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabButton(
                    background: kMainColor,
                    text: Colors.white,
                    title: 'Home',
                    press: () {},
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  TabButton(
                    background: kDarkWhite,
                    text: kMainColor,
                    title: 'Office',
                    press: () {},
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  TabButton(
                    background: kDarkWhite,
                    text: kMainColor,
                    title: 'Other',
                    press: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ButtonGlobalWithoutIcon(
              buttontext: 'Apply',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: null,
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

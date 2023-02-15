import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class AddBankBill extends StatefulWidget {
  const AddBankBill({Key? key}) : super(key: key);

  @override
  _AddBankBillState createState() => _AddBankBillState();
}

class _AddBankBillState extends State<AddBankBill> {
  String dropdownValue = 'Cash';
  DropdownButton<String> getPaymentType() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String paymentType in paymentType) {
      var item = DropdownMenuItem(
        child: Text(paymentType),
        value: paymentType,
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: dropdownValue,
      onChanged: (value){
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Add a Bill',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  textFieldType: TextFieldType.NAME,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Bank Name',
                    hintText: 'City Bank',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  textFieldType: TextFieldType.NAME,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Branch',
                    hintText: 'California',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  textFieldType: TextFieldType.PHONE,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Account Number',
                    hintText: '17675434443',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 60,
                  child: FormField(
                    builder: (FormFieldState<dynamic> field) {
                      return InputDecorator(decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Payment Type',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                      ),
                        child: DropdownButtonHideUnderline(child: getPaymentType()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  textFieldType: TextFieldType.PHONE,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Amount',
                    hintText: '\$150',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  textFieldType: TextFieldType.PHONE,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Routing Number',
                    hintText: '563576346',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ButtonGlobal(
                buttontext: 'Continue',
                buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
                onPressed: () {
                  Navigator.pushNamed(context, '/Bank');
                },
                iconWidget: Icons.arrow_forward,
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class AddReturn extends StatefulWidget {
  const AddReturn({Key? key}) : super(key: key);

  @override
  _AddReturnState createState() => _AddReturnState();
}

class _AddReturnState extends State<AddReturn> {
  final dateController = TextEditingController();

  @override
  void dispose(){
    dateController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Sales Return',
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
                    labelText: 'Customer Name',
                    hintText: 'Daniel',
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
                    labelText: 'Product name',
                    hintText: 'Smart Watch',
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
                    labelText: 'Invoice',
                    hintText: '#1254712',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                      labelText: 'Date Date',
                      hintText: 'Pick a Date'),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AppTextField(
                        textFieldType: TextFieldType.PHONE,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Quantity',
                          hintText: '4',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AppTextField(
                        textFieldType: TextFieldType.PHONE,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Price',
                          hintText: '\$231',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ButtonGlobal(
                buttontext: 'Continue',
                buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
                onPressed: () {
                  Navigator.pushNamed(context, '/SalesReturn');
                },
                iconWidget: Icons.arrow_forward,
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

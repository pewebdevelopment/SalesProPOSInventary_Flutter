// ignore: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class AddSupplier extends StatefulWidget {
  const AddSupplier({Key? key}) : super(key: key);

  @override
  _AddSupplierState createState() => _AddSupplierState();
}

class _AddSupplierState extends State<AddSupplier> {
  String radioItem = '';
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Add Supplier',
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
                  textFieldType: TextFieldType.PHONE,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Phone Number',
                    hintText: '01767 432556',
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
                    labelText: 'Supplier Name',
                    hintText: 'John Doe',
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
                    labelText: 'Opening Balance',
                    hintText: '0.0',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120.0,
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      groupValue: radioItem,
                      title: Text('Supplier',maxLines: 1,),
                      value: 'Supplier',
                      onChanged: (value) {
                        setState(() {
                          radioItem = value.toString();
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      activeColor: kMainColor,
                      groupValue: radioItem,
                      title: Text('Vendor',maxLines: 1,),
                      value: 'Vendor',
                      onChanged: (value) {
                        setState(() {
                          radioItem = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      child: Image(
                        image: AssetImage('images/propic.png'),
                      ),
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Container(
                            height: 200.0,
                            width: MediaQuery.of(context).size.width - 80,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.photo_library_rounded,
                                        size: 60.0,
                                        color: kMainColor,
                                      ),
                                      Text(
                                        'Gallery',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20.0,
                                          color: kMainColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 40.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.camera,
                                        size: 60.0,
                                        color: kGreyTextColor,
                                      ),
                                      Text(
                                        'Camera',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20.0,
                                          color: kGreyTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.EMAIL,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        floatingLabelBehavior:
                        FloatingLabelBehavior.always,
                        labelText: 'Email Address',
                        hintText: 'example@example.com',
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
                          floatingLabelBehavior:
                          FloatingLabelBehavior.always,
                          labelText: 'Address',
                          hintText: 'Placentia, California(CA), 92870'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      maxLines: 2,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          floatingLabelBehavior:
                          FloatingLabelBehavior.always,
                          labelText: 'Note',
                          hintText: 'Text...'),
                    ),
                  ),
                ],
              ),
              ButtonGlobalWithoutIcon(
                  buttontext: 'Save',
                  buttonDecoration:
                  kButtonDecoration.copyWith(color: kMainColor),
                  onPressed: (){
                    Navigator.pushNamed(context, '/Supplier');
                  },
                  buttonTextColor: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}

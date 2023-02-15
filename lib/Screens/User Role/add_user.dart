import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  String dropdownValue = 'Admin';
  DropdownButton<String> getUserRole() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String userRoles in userRole) {
      var item = DropdownMenuItem(
        child: Text(userRoles),
        value: userRoles,
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
          'User Role',
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
                    labelText: 'Full Name',
                    hintText: 'Daniel',
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
                    labelText: 'Phone Number',
                    hintText: '+880 1767 5434443',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  textFieldType: TextFieldType.EMAIL,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Email Address',
                    hintText: 'example@example.com',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FormField(
                  builder: (FormFieldState<dynamic> field) {
                    return InputDecorator(decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'User Type',
                        labelStyle: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                    ),
                      child: DropdownButtonHideUnderline(child: getUserRole()),
                    );
                  },
                ),
              ),
              ButtonGlobal(
                buttontext: 'Continue',
                buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
                onPressed: () {
                  Navigator.pushNamed(context, '/UserRole');
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

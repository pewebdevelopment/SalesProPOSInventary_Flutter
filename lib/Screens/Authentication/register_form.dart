
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/logoandname.png'),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    controller: TextEditingController(), // Optional
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                        labelText: 'Company & Business Name', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 60.0,
                    child: AppTextField(
                      textFieldType: TextFieldType.PHONE,
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: '1767 432556',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    controller: TextEditingController(), // Optional
                    textFieldType: TextFieldType.EMAIL,
                    decoration: InputDecoration(
                        labelText: 'Email Address', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    controller: TextEditingController(), // Optional
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: InputDecoration(
                        labelText: 'Password', border: OutlineInputBorder()),
                  ),
                ),
                ButtonGlobalWithoutIcon(
                    buttontext: 'Register',
                    buttonDecoration:
                    kButtonDecoration.copyWith(color: kMainColor),
                    onPressed: (){
                      Navigator.pushNamed(context, '/setupProfile');
                    },
                    buttonTextColor: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.poppins(
                          color: kGreyTextColor, fontSize: 15.0),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/loginForm');
                      },
                      child: Text(
                        'Log In',
                        style: GoogleFonts.poppins(
                          color: kMainColor,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/tab_buttons.dart';
import 'edit_profile.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {
                EditProfile().launch(context);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: kMainColor,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Edit',
                    style: GoogleFonts.poppins(
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image(
                          image: AssetImage('images/profileimage.png'),
                          height: 100.0,
                          width: 100.0,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.white, width: 4.0),
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  readOnly: true,
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'Maan Theme',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(
                          borderSide: BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  readOnly: true,
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'maantheme@gmail.com',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(
                          borderSide: BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  readOnly: true,
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: '+880 1767 432445',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(
                          borderSide: BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  readOnly: true,
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'Maan Store',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(
                          borderSide: BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  readOnly: true,
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'Fashion Store',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(
                          borderSide: BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        readOnly: true,
                        cursorColor: kGreyTextColor,
                        controller: TextEditingController(
                          text: 'United States',
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder().copyWith(
                                borderSide: BorderSide(color: kGreyTextColor)),
                            hoverColor: kGreyTextColor,
                            fillColor: kGreyTextColor),
                        textFieldType: TextFieldType.NAME,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: AppTextField(
                        readOnly: true,
                        cursorColor: kGreyTextColor,
                        controller: TextEditingController(
                          text: 'English',
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder().copyWith(
                                borderSide: BorderSide(color: kGreyTextColor)),
                            hoverColor: kGreyTextColor,
                            fillColor: kGreyTextColor),
                        textFieldType: TextFieldType.NAME,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Working Day',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabButtonSmall(
                        title: 'Sat',
                        text: Colors.white,
                        background: kMainColor,
                        press: null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabButtonSmall(
                        title: 'Sun',
                        text: Colors.white,
                        background: kMainColor,
                        press: null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabButtonSmall(
                        title: 'Mon',
                        text: Colors.white,
                        background: kMainColor,
                        press: null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabButtonSmall(
                        title: 'Tue',
                        text: Colors.white,
                        background: kMainColor,
                        press: null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabButtonSmall(
                        title: 'Wed',
                        text: Colors.white,
                        background: kMainColor,
                        press: null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabButtonSmall(
                        title: 'Thu',
                        text: Colors.white,
                        background: kMainColor,
                        press: null,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/button_global.dart';
import 'add_contact.dart';
import '../../constant.dart';
import 'package:nb_utils/nb_utils.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Contact List',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50.0,
                        width: 50.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/profile.png'),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ibne Riad',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            '+880 1767-432112',
                            style: GoogleFonts.poppins(
                              color: kGreyTextColor,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            ButtonGlobal(
                iconWidget: Icons.arrow_forward,
                buttontext: 'Add Contact',
                iconColor: Colors.white,
                buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
                onPressed: () {
                  AddContact().launch(context);
                },),
          ],
        ),
      ),
    );
  }
}

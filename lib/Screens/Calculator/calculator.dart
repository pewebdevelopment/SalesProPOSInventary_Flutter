import 'package:flutter/material.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int productPrice = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
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
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.add_to_photos,
                      color: kGreyTextColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Add Product',
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                value: "/Products",
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.card_travel,
                      color: kGreyTextColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Stock List',
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                value: "/Stock",
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.text_snippet_outlined,
                      color: kGreyTextColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Sales List',
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                value: "/SalesList",
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.person_add,
                      color: kGreyTextColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Add Contact',
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                value: "/SalesList",
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.person_rounded,
                      color: kGreyTextColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Contact List',
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                value: "/SalesList",
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.list_sharp,
                      color: kGreyTextColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Due List',
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                value: "/SalesList",
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.play_circle_outline,
                      color: kGreyTextColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'How to use',
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                value: "/SalesList",
              ),
            ],
            onSelected: (value) {
              Navigator.pushNamed(context, '$value');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/PaymentOptions');
              },
              child: Container(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/selected.png'),
                          ),
                          Text(
                            '2',
                            style: GoogleFonts.poppins(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'Total: \$875',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: 'Product Name',
                      labelStyle: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      fillColor: kMainColor.withOpacity(0.1),
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                Expanded(
                  child: AppTextField(
                    textFieldType: TextFieldType.PHONE,
                    controller: TextEditingController(text: '\$$productPrice'),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: kMainColor.withOpacity(0.1),
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: GridButton(
                textStyle:
                    GoogleFonts.poppins(color: Colors.black, fontSize: 25.0),
                borderColor: Colors.white,
                borderWidth: 0,
                onPressed: (dynamic val) {
                  setState(() {
                    productPrice = int.parse(val);
                  });
                },
                items: [
                  [
                    GridButtonItem(
                      title: "7",
                    ),
                    GridButtonItem(title: "8"),
                    GridButtonItem(title: "9"),
                  ],
                  [
                    GridButtonItem(title: "4"),
                    GridButtonItem(title: "5"),
                    GridButtonItem(title: "6"),
                  ],
                  [
                    GridButtonItem(title: "1"),
                    GridButtonItem(title: "2"),
                    GridButtonItem(title: "3"),
                  ],
                  [
                    GridButtonItem(title: "."),
                    GridButtonItem(title: "0"),
                    GridButtonItem(title: "+"),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

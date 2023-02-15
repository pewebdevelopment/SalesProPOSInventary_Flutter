import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/add_category.dart';
import '../../GlobalComponents/button_global.dart';
import '../Products/product_data.dart';
import 'purchase_details.dart';
import '../Sales/SalesCategoryList.dart';
import '../Sales/sales_screen.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

// ignore: must_be_immutable
class PurchaseScreen extends StatefulWidget {
  PurchaseScreen({Key? key, @required this.catName}) : super(key: key);
  var catName;

  @override
  _PurchaseScreenState createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  String dropdownValue = '';

  @override
  void initState() {
    widget.catName == null
        ? dropdownValue = 'Fashion'
        : dropdownValue = widget.catName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Purchase',
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
                  child: Text('Add Promo Code'), value: "/addPromoCode"),
              PopupMenuItem(child: Text('Add Discount'), value: "/addDiscount"),
              PopupMenuItem(
                  child: Text('Cancel All Product'), value: "/settings"),
              PopupMenuItem(
                  child: Text('Vat Doesn\'t Apply'), value: "/settings"),
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
                Navigator.pushNamed(context, '/Sales');
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
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width - 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: kGreyTextColor),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        SalesCategoryList().launch(context);
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(dropdownValue),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_down),
                          SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      AddCategory().launch(context);
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: kGreyTextColor),
                      ),
                      child: Icon(
                        Icons.add,
                        color: kGreyTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ...List.generate(
                    demoProduct.length,
                    (index) => ProductCard(
                      product: demoProduct[index],
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            ButtonGlobal(
              iconWidget: Icons.arrow_forward,
              buttontext: 'Purchase List',
              iconColor: Colors.white,
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: (){
                PurchaseDetails().launch(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

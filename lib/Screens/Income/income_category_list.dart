import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalComponents/add_category.dart';
import '../../GlobalComponents/category_card.dart';
import '../Income/add_income.dart';
import '../Products/product_data.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class IncomeCategopry extends StatefulWidget {
  const IncomeCategopry({Key? key}) : super(key: key);

  @override
  _IncomeCategopryState createState() => _IncomeCategopryState();
}

class _IncomeCategopryState extends State<IncomeCategopry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Image(image: AssetImage('images/x.png'),)),
        title: Text(
          'Categories',
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: kGreyTextColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      AddCategory().launch(context);
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      height: 60.0,
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
                SizedBox(
                  width: 20.0,
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ...List.generate(
                    demoCategory.length,
                        (index) => CategoryCard(
                      product: demoCategory[index],
                      pressed: (){
                        AddIncome(catName: demoCategory[index].title).launch(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

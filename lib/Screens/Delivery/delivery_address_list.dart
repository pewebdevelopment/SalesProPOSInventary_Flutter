import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant.dart';

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({Key? key}) : super(key: key);

  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Delivery Address',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    selected = true;
                  });
                },
                child: Card(
                  elevation: 4.0,
                  shape: selected
                      ? new RoundedRectangleBorder(
                      side: new BorderSide(color: Colors.orange, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0))
                      : new RoundedRectangleBorder(
                      side: new BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,top: 20.0,bottom: 10.0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/officedeliver.png'),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              'Kamal / Office',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: SizedBox(
                              width: 200.0,
                              child: Text(
                                'Missouri City, Texas(TX), 77489, 1110 Curtis Xing',
                                maxLines: 2,
                                style: GoogleFonts.poppins(
                                  color: kGreyTextColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 50.0,),
                          Image(image: AssetImage('images/map.png'),height: 66.0,width: 66.0,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,top: 10.0,bottom: 30.0),
                        child: Text(
                          '+1452 4584 5484',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

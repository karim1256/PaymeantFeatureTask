import 'dart:ui';
import 'package:provider/provider.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/BackSideCreditCard.dart';

class BackSideCreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: const EdgeInsets.only(left: 23, right: 23, top: 13),
        width: 320,
        height: 195,
        decoration: BoxDecoration(
          color: Color(0xff1b1b20),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
      Positioned(
        top: 40,
        right: 5,
        child: Container(width: 310, height: 40, color: Colors.black),
      ),
      Positioned(
        top: 110,
        right: 35,
        child: Container(
            width: 120,
            height: 30,
            color: Colors.white,
            child: Center(
              child: Text(
                Provider.of<PaymentPovider>(context, listen: false).Cvcfun(),
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            )),
      )
    ]);
  }
}

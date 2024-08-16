// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:training/Core/Widgets/Widgets.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);
  Widget RowButtom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        text(t: "Track Order", s: 15),
        Icon(
          Icons.location_on_outlined,
          color: Colors.white,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff18181e),
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            SizedBox(
              width: double.infinity,
            ),
            text(t: "Success", s: 27),
            SizedBox(
              height: 8,
            ),
            text(t: "Your order is placed", s: 19),
            SizedBox(height: 28),
            Image.asset(
              "lib/Core/Payment_Assets/success.jpg",
              height: 230,
              width: 230,
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          left: -5,
          child: Image.asset(
            "lib/Core/Payment_Assets/SuccessBackGround.jpg",
            height: 255,
            width: 255,
          ),
        ),
        Positioned(
          bottom: 35,
          left: 90,
          child: MaterialButton(
              onPressed: () {},
              child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  height: 43,
                  width: 200,
                  child: RowButtom())),
        ),
        Positioned(
            top: 15,
            right: 20,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 27,
                ))),
      ]),
    );
  }
}

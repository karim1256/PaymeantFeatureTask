import 'dart:io';

import 'package:flutter/material.dart';

Widget text({String? t, double? s}) {
  return Text(
    t.toString(),
    style: TextStyle(color: Colors.white, fontSize: s),
  );
}

Widget APPcontainer(Widget c, {double? b, double? h, w, Color? difcolor}) {
  Color ContainerColor = Color(0xff1b1b20);
  return Container(
      padding: EdgeInsets.only(left: 20, top: 20, right: 25, bottom: b!),
      decoration: BoxDecoration(
          color: difcolor ??= ContainerColor,
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      height: h,
      width: w ?? 300,
      child: c);
}

List<String> cards = [
  "Axis Bank *************232  ",
  "HDFC Bank *************435",
  "HDFC Bank *************767",
  "Axis Bank *************443  ",
];
Widget BottomButton(Widget b) {
  return Container(
      width: 365,
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xff1b1b20),
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ));
  child:
  b;
}

/*#151518
#1b1b20*/

import 'package:flutter/material.dart';
import 'package:training/Core/Widgets/AddCardButtom.dart';
import 'package:training/Core/Widgets/Widgets.dart';
import 'package:training/Core/Widgets/PaymentAppBar.dart';

import 'package:training/Features/Profile_Payment/ListProfilePaymentCards.dart';

class ProfilePaymentPage extends StatefulWidget {
  const ProfilePaymentPage({Key? key}) : super(key: key);

  @override
  State<ProfilePaymentPage> createState() => _ProfilePaymentPageState();
}

class _ProfilePaymentPageState extends State<ProfilePaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151518),
      appBar: PaymentAppBar("Manage Payment Methods"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
          ),
          text(t: "More Payment Option", s: 20),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: APPcontainer(
              ListProfilePaymentCards(),
              h: 200,
              b: 0,
            ),
          ),
        ],
      ),
    );
  }
}

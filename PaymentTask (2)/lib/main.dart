import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/AddCreditCardPage.dart';
import 'package:training/Features/Cart_payment/Billing_Page/BillingPage.dart';
import 'package:training/Features/Cart_payment/Payment_OPtions_Page/Payment_Option.dart';
import 'package:training/Features/Profile_Payment/ProfilePayment.dart';
import 'package:provider/provider.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentPovider(),
      child: MaterialApp(
        home: CartPaymentOption(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

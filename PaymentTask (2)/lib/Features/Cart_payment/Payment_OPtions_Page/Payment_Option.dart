import 'package:flutter/material.dart';
import 'package:training/Core/Widgets/OrderDetails.dart';
import 'package:training/Core/Widgets/PaymentAppBar.dart';
import 'package:training/Core/Widgets/Widgets.dart';
import 'package:training/Features/Cart_payment/Payment_OPtions_Page/CashPayment.dart';
import 'package:training/Core/Widgets/BottomButton.dart';
import 'package:training/Features/Cart_payment/Payment_OPtions_Page/CardPayment.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/AddCreditCardPage.dart';
import 'package:training/Features/Cart_payment/Billing_Page/BillingPage.dart';

class CartPaymentOption extends StatefulWidget {
  CartPaymentOption({super.key});

  @override
  State<CartPaymentOption> createState() => _CartPaymentOptionState();
}

class _CartPaymentOptionState extends State<CartPaymentOption> {
  @override
  String? Cash;
  OrderDetails? order;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151518),
      appBar: PaymentAppBar("Payment Options"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            APPcontainer(OrderDetails(), b: 20, h: 200),
            SizedBox(
              height: 23,
              width: double.infinity,
            ),
            text(t: "Credit & Debit Card", s: 18.0),
            SizedBox(
              height: 25,
            ),
            APPcontainer(
              Cards(Cash),
              h: 200,
              b: 0,
            ),
            SizedBox(
              height: 23,
            ),
            text(t: "More Payment Option", s: 18),
            SizedBox(
              height: 25,
            ),
            APPcontainer(
              CashPaymentMethod(),
              h: 70,
              b: 20,
            ),
            SizedBox(
              height: 30,
            ),
            Bottom(navigationPage: Billing(), TextButton: "Proceed To Pay")
          ],
        ),
      ),
    );
  }
}

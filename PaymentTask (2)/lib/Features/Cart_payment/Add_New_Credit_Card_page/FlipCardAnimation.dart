import 'package:flip_card/flip_card.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/CreditCardDesign.dart';
import 'package:flutter/material.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/BackSideCreditCard.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/AddCreditCardPage.dart';
import 'package:provider/provider.dart';

class FlipCardExample extends StatefulWidget {
  @override
  _FlipCardExampleState createState() => _FlipCardExampleState();
}

class _FlipCardExampleState extends State<FlipCardExample> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: Provider.of<PaymentPovider>(
        context,
      ).cardKey,
      flipOnTouch: false,
      front: CreditCard(),
      back: BackSideCreditCard(),
    );
  }
}

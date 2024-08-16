import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training/Core/Widgets/PaymentAppBar.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/CreditCardDesign.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/CreditCardNumberFormField.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/CreditCardNameHolderForm.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/CVCTextFormField.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/ValidThruTextField.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/FlipCardAnimation.dart';

class ADDCARD extends StatefulWidget {
  const ADDCARD({Key? key}) : super(key: key);

  @override
  State<ADDCARD> createState() => _ADDCARDState();
}

class _ADDCARDState extends State<ADDCARD> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PaymentPovider>(context);

    return Scaffold(
      backgroundColor: Color(0xff303035),
      appBar: PaymentAppBar("Add Card"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              FlipCardExample(), // Display the flip card
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Text(
                "Card Number",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              CreditCardNumberForm(),
              Text(
                "Card Holder",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              CreditCardFormHolder(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Exp Date",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      ValidThruForm()
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: <Widget>[
                      Text(
                        "CVC",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      CreditCardCvcForm(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              MaterialButton(
                onPressed: () {
                  provider.Submit();
                },
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "ADD",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff303035),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

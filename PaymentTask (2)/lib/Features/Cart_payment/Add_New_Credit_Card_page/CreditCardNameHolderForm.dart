import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/CreditCardDesign.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/AddCreditCardPage.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/CreditCardNumberFormField.dart';
import 'package:provider/provider.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';

class CreditCardFormHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PaymentPovider>(context);

    return Form(
      key: provider.nameFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
            width: 280,
            child: TextFormField(
              controller: provider.nameController,
              decoration: InputDecoration(
                hintText: 'Holder Name',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Type Holder Name';
                }
                if (!RegExp(r"^[a-zA-Z]+([ '-][a-zA-Z]+)*$").hasMatch(value)) {
                  return 'Invalid name';
                }
                return null;
              },
              onChanged: (value) {
                provider.cardName = value;
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

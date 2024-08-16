import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';
import 'package:provider/provider.dart';

class CreditCardNumberForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PaymentPovider>(context);

    return Form(
      key: provider.numberFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 280,
            height: 45,
            child: TextFormField(
              controller: provider.numberController,
              decoration: InputDecoration(
                hintText: 'Card Number',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(16),
              ],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a card number';
                }
                if (value.length != 16) {
                  return 'Card number must be 16 digits';
                }
                if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                  return 'Card number can only contain digits';
                }
                return null;
              },
              onChanged: (value) {
                provider.cardNumber = value;
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

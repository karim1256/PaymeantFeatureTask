import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/AddCreditCardPage.dart';
import 'package:provider/provider.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';
import 'package:provider/provider.dart';

class ValidThruForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PaymentPovider>(context);

    return Form(
      key: provider.validThruFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
            width: 130,
            child: TextFormField(
              controller: provider.validThruController,
              decoration: InputDecoration(
                hintText: '(MM/YY)',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(5),
              ],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the valid thru date';
                }
                if (!RegExp(r"^(0[1-9]|1[0-2])\/\d{2}$").hasMatch(value)) {
                  return 'Invalid date. Please enter in MM/YY format';
                }
                return null;
              },
              onChanged: (value) {
                provider.cardValidThru = value;
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

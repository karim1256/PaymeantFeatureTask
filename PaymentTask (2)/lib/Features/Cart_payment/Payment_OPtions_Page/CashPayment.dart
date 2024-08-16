import 'package:flutter/material.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/AddCreditCardPage.dart';
import 'package:provider/provider.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';

class CashPaymentMethod extends StatefulWidget {
  const CashPaymentMethod({Key? key}) : super(key: key);

  @override
  State<CashPaymentMethod> createState() => _CashPaymentMethodState();
}

class _CashPaymentMethodState extends State<CashPaymentMethod> {
  @override
  String? CashPayment;

  Widget build(BuildContext context) {
    final paymentProvider = Provider.of<PaymentPovider>(context);

    return Row(
      children: [
        Icon(
          Icons.money,
          color: Colors.white,
          size: 15.0,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "cash",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 170,
        ),
        Radio<String>(
          value: "cash",
          groupValue: paymentProvider.SelectedGroup,
          onChanged: (value) {
            paymentProvider.SelectedGroup = value;
            paymentProvider.dissableButton(); // Update button state
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:training/Core/Widgets//Widgets.dart';
import 'package:training/Features/Cart_payment/Billing_Page/BillingPage.dart';
import 'package:training/Features/Cart_payment/Success_Order_Page/SuccessOrder.dart';
import 'package:training/Features/StateManagement//PaymentProvider.dart';
import 'package:provider/provider.dart';

class Bottom extends StatelessWidget {
  final Widget navigationPage;
  final String TextButton;

  const Bottom(
      {Key? key, required this.navigationPage, required this.TextButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paymentProvider = Provider.of<PaymentPovider>(context);

    return Container(
      width: 365,
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xff1b1b20),
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ),
      child: MaterialButton(
        onPressed: paymentProvider.choicePaymentOptiondissable()
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => navigationPage),
                );
              }
            : null,
        child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Color(0xff26262d),
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            child: Center(child: text(t: TextButton, s: 15))),
      ),
    );
  }
}

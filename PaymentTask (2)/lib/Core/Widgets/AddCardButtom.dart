import 'package:flutter/material.dart';
import 'package:training/Core/Widgets/AddCardButtom.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/AddCreditCardPage.dart';
import 'package:provider/provider.dart';
import 'package:training/Features/StateManagement//PaymentProvider.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paymentProvider = Provider.of<PaymentPovider>(context);

    return MaterialButton(
        onPressed: paymentProvider.addCardButtonEnabled
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ADDCARD()),
                );
              }
            : null,
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xff2e2e31),
              child: Icon(
                Icons.add_outlined,
                color: Colors.white,
                size: 15.0,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              "Add New card",
              style: TextStyle(color: Colors.white),
            )
          ],
        ));
  }
}

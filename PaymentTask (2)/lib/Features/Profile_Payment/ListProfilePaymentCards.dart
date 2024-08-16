import 'package:flutter/material.dart';
import 'package:training/Core/Widgets//Widgets.dart';
import 'package:training/Core/Widgets/AddCardButtom.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/AddCreditCardPage.dart';

class ListProfilePaymentCards extends StatelessWidget {
  const ListProfilePaymentCards({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 105,
        width: 310,
        child: ListView.separated(
          itemBuilder: (BuildContext, int index) => Row(children: [
            Image.asset(
              "lib/Core/Payment_Assets/MasterCard.png",
              height: 20,
              width: 40,
            ),
            Text(
              cards[index],
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 5,
            ),
          ]),
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 10,
          ),
          itemCount: cards.length,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Divider(),
      AddCardButton()
    ]);
  }
}

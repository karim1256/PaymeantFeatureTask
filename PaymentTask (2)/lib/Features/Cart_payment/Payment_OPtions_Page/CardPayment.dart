import 'package:flutter/material.dart';
import 'package:training/Core/Widgets/Widgets.dart';
import 'package:training/Core/Widgets/AddCardButtom.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/AddCreditCardPage.dart';
import 'package:provider/provider.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';

class Cards extends StatefulWidget {
  const Cards(String? cash, {Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  String? CashPayment;

  @override
  Widget build(BuildContext context) {
    final paymentProvider = Provider.of<PaymentPovider>(context);

    return Column(
      children: [
        Container(
          height: 105,
          width: 310,
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) => Row(
              children: [
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
                Radio<String>(
                  value: cards[index],
                  groupValue: paymentProvider.SelectedGroup,
                  onChanged: (value) {
                    paymentProvider.SelectedGroup = value.toString();
                    paymentProvider.dissableButton(); // Update button state
                  },
                ),
              ],
            ),
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
        AddCardButton(), // Enable/disable based on paymentProvider.SelectedGroup
      ],
    );
  }
}

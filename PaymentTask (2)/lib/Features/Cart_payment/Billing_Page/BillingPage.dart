import 'package:flutter/material.dart';
import 'package:training/Core/Widgets//OrderDetails.dart';
import 'package:training/Core/Widgets/PaymentAppBar.dart';
import 'package:training/Core/Widgets/Widgets.dart';
import 'package:training/Features/Cart_payment/Payment_OPtions_Page/CardPayment.dart';
import 'package:training/Features/Cart_payment/Payment_OPtions_Page/Payment_Option.dart';
import 'package:training/Core/Widgets/BottomButton.dart';
import 'package:training/Features/Cart_payment/Payment_OPtions_Page/CashPayment.dart';
import 'package:training/Features/Cart_payment/Success_Order_Page/SuccessOrder.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';
import 'package:provider/provider.dart';

class Billing extends StatelessWidget {
  Billing({Key? key}) : super(key: key);

  @override
  static String Cash = "cash";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151518),
      appBar: PaymentAppBar("Billing"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Stack(children: [
              Center(
                  child: APPcontainer(
                OrderDetails(),
                b: 20,
                h: Provider.of<PaymentPovider>(context).SelectedGroup == "cash"
                    ? 235
                    : 285,
              )),
              Positioned(
                top: 190,
                right: 102,
                child: Column(children: [
                  Row(children: [
                    Text(
                      'Payment Method:',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Positioned(
                      child: Text(
                        Provider.of<PaymentPovider>(context).SelectedGroup !=
                                "cash"
                            ? "Card"
                            : "Cash",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    Provider.of<PaymentPovider>(context).SelectedGroup != "cash"
                        ? Provider.of<PaymentPovider>(context)
                            .SelectedGroup
                            .toString()
                        : "",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ]),
              )
            ]),
            SizedBox(
              width: double.infinity,
            ),
            SizedBox(
              height: 20,
            ),
            APPcontainer(
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        text(t: 'Subtotal', s: 23),
                        Spacer(),
                        text(t: '₹50', s: 23),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        text(t: 'GST', s: 15),
                        Spacer(),
                        text(t: '₹12', s: 15),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        text(t: 'Delivery partner fee for 8km', s: 15),
                        Spacer(),
                        text(t: '₹30', s: 15)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        text(t: 'Grand Total', s: 20),
                        Spacer(),
                        text(t: '₹92', s: 20)
                      ],
                    ),
                  ],
                ),
                h: 220,
                b: 20,
                w: 300),
            SizedBox(
              height: 23,
            ),
            Bottom(navigationPage: Success(), TextButton: "Placed Order")
          ],
        ),
      ),
    );
  }
}

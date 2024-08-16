import 'package:flutter/material.dart';
import 'package:training/Core/Widgets/PaymentAppBar.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';
import 'package:provider/provider.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 320,
      height: 195,
      decoration: BoxDecoration(
        color: Color(0xff1b1b20),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("lib/Core/Payment_Assets/MasterCard.png",
                  height: 55, width: 85),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "lib/Core/Payment_Assets/CardMem.jpg",
                  height: 35,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Center(
            child: Text(
              Provider.of<PaymentPovider>(context, listen: true).Numberfun(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'card holder',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    Provider.of<PaymentPovider>(context, listen: false)
                        .Namefun(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Valid Thru',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    Provider.of<PaymentPovider>(context, listen: false)
                        .ValidThrufun(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

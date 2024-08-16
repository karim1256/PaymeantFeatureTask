import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:training/Features/StateManagement/PaymentProvider.dart';

class CreditCardCvcForm extends StatefulWidget {
  @override
  _CreditCardCvcFormState createState() => _CreditCardCvcFormState();
}

class _CreditCardCvcFormState extends State<CreditCardCvcForm> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    // Add listener to the FocusNode to handle focus changes
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        Provider.of<PaymentPovider>(context, listen: false).flipCardAnimaion();
      } else {
        // Flip back the card when focus is lost
        Provider.of<PaymentPovider>(context, listen: false).flipCardAnimaion();
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PaymentPovider>(context);

    return Form(
      key: provider.cvcFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            height: 45,
            child: TextFormField(
              controller: provider.cvcController,
              focusNode: _focusNode, // Attach the FocusNode
              decoration: InputDecoration(
                hintText: 'CVC',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(3),
              ],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter CVC number';
                }
                if (value.length != 3) {
                  return 'CVC number must be 3 digits';
                }
                return null;
              },
              onChanged: (value) {
                provider.cardCvc = value;
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

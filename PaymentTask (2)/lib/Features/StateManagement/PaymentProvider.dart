import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/CVCTextFormField.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/CreditCardNameHolderForm.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/CreditCardNumberFormField.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/ValidThruTextField.dart';
import 'package:training/Features/Cart_payment/Add_New_Credit_Card_page/FlipCardAnimation.dart';
import 'package:flip_card/flip_card.dart';
import 'package:training/Core/Widgets/AddCardButtom.dart';

class PaymentPovider extends ChangeNotifier {
  String? SelectedGroup;

  void dissableButton() {
    if (SelectedGroup == "cash") {
      addCardButtonEnabled = false;
    } else {
      addCardButtonEnabled = true;
    }
    notifyListeners();
  }

  bool addCardButtonEnabled = true;

  bool choicePayment = true;
  bool choicePaymentOptiondissable() {
    if (SelectedGroup == null) {
      return false;
    } else {
      return true;
    }
    notifyListeners();
  }

  String _cardNumber = "";
  set cardNumber(String value) {
    _cardNumber = value;
    notifyListeners();
  }

  String Numberfun() {
    return _cardNumber.isEmpty ? '**** **** **** ****' : _cardNumber;
  }

  String _cardName = "";
  set cardName(String value) {
    _cardName = value;
    notifyListeners();
  }

  String Namefun() {
    return _cardName.isEmpty ? '' : _cardName;
  }

  String _cardValidThru = "";
  set cardValidThru(String value) {
    _cardValidThru = value;
    notifyListeners();
  }

  String ValidThrufun() {
    return _cardValidThru.isEmpty ? '' : _cardValidThru;
  }

  String _cardCvc = "";
  set cardCvc(String value) {
    _cardCvc = value;
    notifyListeners();
  }

  String Cvcfun() {
    return _cardCvc.isEmpty ? '' : _cardCvc;
  }

  final GlobalKey<FormState> numberFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> nameFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> validThruFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> cvcFormKey = GlobalKey<FormState>();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController validThruController = TextEditingController();
  final TextEditingController cvcController = TextEditingController();

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  void submitNumberForm() {
    if (numberFormKey.currentState!.validate()) {
      numberFormKey.currentState!.save();
      numberController.clear();
    }
  }

  void submitNameForm() {
    if (nameFormKey.currentState!.validate()) {
      nameFormKey.currentState!.save();
      nameController.clear();
    }
  }

  void submitCvcForm() {
    if (cvcFormKey.currentState!.validate()) {
      cvcFormKey.currentState!.save();
      cvcController.clear();
    }
  }

  void submitValidThruForm() {
    if (validThruFormKey.currentState!.validate()) {
      validThruFormKey.currentState!.save();
      validThruController.clear();
    }
  }

  void Submit() {
    submitCvcForm();
    submitNameForm();
    submitValidThruForm();
    submitNumberForm();
  }

  void flipCardAnimaion() {
    cardKey.currentState?.toggleCard();
  }
}

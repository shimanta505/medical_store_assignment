import 'package:get/get.dart';

class OrderController extends GetxController {
  String? _selectedPrototype;
  bool _isShippingAddressExpand = false;
  bool _isPaymentInfoExpand = false;
  bool _isPriceDetailsExpand = false;
  set priceDetailsExpand(bool value) {
    _isPriceDetailsExpand = value;
  }

  set paymentInfoExpand(bool value) {
    _isPaymentInfoExpand = value;
  }

  set shippingAddressExpand(bool value) {
    _isShippingAddressExpand = value;
  }

  set setSelectedType(String value) {
    _selectedPrototype = value;
  }

  String? get getSelectedPrototype => _selectedPrototype;
  bool get isShippingAddressExpand => _isShippingAddressExpand;
  bool get isPaymentInfoExpand => _isPaymentInfoExpand;
  bool get isPriceDetailsExpand => _isPriceDetailsExpand;
}

enum UISection {
  prototype,
  shippingAddressExpand,
  paymentProcessExpand,
  priceDetails,
  other,
}

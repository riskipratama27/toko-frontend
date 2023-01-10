import 'package:flutter/material.dart';
import 'package:arvaaksesoris/models/cart_model.dart';
import 'package:arvaaksesoris/services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  String address;

  String get getAddress {
    return address;
  }

  Set setAddress(String address) {
    address = address;
  }

  Future<bool> checkout(String token, List<CartModel> carts, double totalPrice,
      String address) async {
    try {
      if (await TransactionService().checkout(
        token,
        carts,
        totalPrice,
        address,
      )) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}

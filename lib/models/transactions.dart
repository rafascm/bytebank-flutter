import 'package:bytebank/models/transaction.dart';
import 'package:flutter/material.dart';

class Transactions extends ChangeNotifier {
  final List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  add(Transaction newTransaction) {
    _transactions.add(newTransaction);
    notifyListeners();
  }
}

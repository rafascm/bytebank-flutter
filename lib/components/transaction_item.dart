import 'package:bytebank/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final Transaction _transaction;

  const TransactionItem(this._transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transaction.toStringValue()),
        subtitle: Text(_transaction.toStringAcc()),
      ),
    );
  }
}

import 'package:bytebank/components/transaction_item.dart';
import 'package:bytebank/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'transaction_form.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Consumer<Transactions>(
        builder: (context, tsxs, child) {
          return ListView.builder(
            itemCount: tsxs.transactions.length,
            itemBuilder: (context, index) {
              final tsx = tsxs.transactions[index];
              return TransactionItem(tsx);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransactionForm()),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

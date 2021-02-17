import 'package:flutter/material.dart';

import '../../models/transaction.dart';
import '../../components/transaction_item.dart';
import 'transaction_form.dart';

class TransactionList extends StatefulWidget {
  final List<Transaction> _transactions = List();

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transactions.length,
        itemBuilder: (context, index) {
          final tsx = widget._transactions[index];
          return TransactionItem(tsx);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transaction> future = Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransactionForm()),
          );
          future.then((transaction) {
            if (transaction != null)
              setState(() {
                widget._transactions.add(transaction);
              });
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

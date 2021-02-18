import 'package:bytebank/components/transaction_item.dart';
import 'package:bytebank/models/transactions.dart';
import 'package:bytebank/screens/transaction/no_recent_transactions.dart';
import 'package:bytebank/screens/transaction/transacton_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentTransactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Últimas Transferências',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Consumer<Transactions>(
          builder: (context, tsxs, child) {
            final _amount =
                tsxs.transactions.length < 3 ? tsxs.transactions.length : 2;

            if (_amount == 0) {
              return NoRecentTransaction();
            }

            final _recent = tsxs.transactions.reversed.toList();
            return ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: _amount,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return TransactionItem(_recent[index]);
              },
            );
          },
        ),
        RaisedButton(
          child: Text('Visualizar Todas'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TransactionList()),
            );
          },
        ),
      ],
    );
  }
}

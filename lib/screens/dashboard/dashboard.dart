import 'package:bytebank/screens/deposit/form.dart';
import 'package:bytebank/screens/transaction/recent.dart';
import 'package:bytebank/screens/transaction/transaction_form.dart';
import 'package:flutter/material.dart';

import 'balance_card.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: BalanceCard(),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Receber Depósito'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DepositForm()),
                  );
                },
              ),
              RaisedButton(
                child: Text('Fazer Transferência'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TransactionForm()),
                  );
                },
              ),
            ],
          ),
          RecentTransactions(),
        ],
      ),
    );
  }
}

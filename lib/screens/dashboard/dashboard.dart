import 'package:bytebank/screens/dashboard/deposit/form.dart';
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
          RaisedButton(
            child: Text('Receber Depósito'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DepositForm()),
              );
            },
          ),
        ],
      ),
    );
  }
}

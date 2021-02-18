import 'package:bytebank/models/balance.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:bytebank/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTransactionButton extends StatelessWidget {
  const AddTransactionButton({
    Key key,
    @required TextEditingController controllerAcc,
    @required TextEditingController controllerValue,
  })  : _controllerAcc = controllerAcc,
        _controllerValue = controllerValue,
        super(key: key);

  final TextEditingController _controllerAcc;
  final TextEditingController _controllerValue;

  @override
  Widget build(BuildContext ctx) {
    return RaisedButton(
      child: Text('Confirmar'),
      onPressed: () => _addTransaction(ctx),
    );
  }

  void _addTransaction(BuildContext ctx) {
    final int _acc = int.tryParse(_controllerAcc.text);
    final double _value = double.tryParse(_controllerValue.text);

    if (_validateTransaction(ctx, _acc, _value)) {
      final newTransaction = Transaction(acc: _acc, value: _value);
      _updateState(ctx, newTransaction, _value);

      Navigator.pop(ctx);
    }
  }

  bool _validateTransaction(BuildContext ctx, int acc, double value) {
    final _currentBalance = Provider.of<Balance>(ctx, listen: false).value;
    return acc != null && value != null && value <= _currentBalance;
  }

  void _updateState(BuildContext ctx, Transaction newTransaction, value) {
    Provider.of<Transactions>(ctx, listen: false).add(newTransaction);
    Provider.of<Balance>(ctx, listen: false).sub(value);
  }
}

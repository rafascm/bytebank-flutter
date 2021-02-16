import 'package:flutter/material.dart';

import '../models/transaction.dart';

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
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Confirmar'),
      onPressed: () => _addTransaction(context),
    );
  }

  void _addTransaction(BuildContext ctx) {
    final int _acc = int.tryParse(_controllerAcc.text);
    final double _value = double.tryParse(_controllerValue.text);

    if (_acc != null && _value != null) {
      final createdTransaction = Transaction(
        acc: _acc,
        value: _value,
      );
      Navigator.pop(ctx, createdTransaction);
    }
  }
}

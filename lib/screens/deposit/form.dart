import 'package:bytebank/components/transaction_form_input_editor.dart';
import 'package:bytebank/models/balance.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DepositForm extends StatelessWidget {
  final TextEditingController _controllerValue = TextEditingController();

  void _addDeposit(context) {
    final double value = double.tryParse(_controllerValue.text);

    if (_validateDeposit(value)) {
      _updateState(context, value);
      Navigator.pop(context);
    }
  }

  bool _validateDeposit(double value) {
    return value != null;
  }

  void _updateState(context, value) {
    Provider.of<Balance>(context, listen: false).add(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receber Depósito'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputEditor(
              controller: _controllerValue,
              label: 'Valor',
              hint: '0.00',
            ),
            RaisedButton(
              child: Text('Confirmar'),
              onPressed: () => _addDeposit(context),
            ),
          ],
        ),
      ),
    );
  }
}

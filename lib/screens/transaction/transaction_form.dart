import 'package:bytebank/components/transaction_form_add_button.dart';
import 'package:bytebank/components/transaction_form_input_editor.dart';
import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController _controllerAcc = TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputEditor(
              controller: _controllerAcc,
              label: 'Número da Conta',
              hint: '00000',
            ),
            InputEditor(
              controller: _controllerValue,
              label: 'Valor',
              hint: '0.00',
            ),
            AddTransactionButton(
              controllerAcc: _controllerAcc,
              controllerValue: _controllerValue,
            ),
          ],
        ),
      ),
    );
  }
}

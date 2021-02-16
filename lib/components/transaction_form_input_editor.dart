import 'package:flutter/material.dart';

class InputEditor extends StatelessWidget {
  const InputEditor({
    Key key,
    @required TextEditingController controller,
    @required String label,
    @required String hint,
  })  : _controller = controller,
        _label = label,
        _hint = hint,
        super(key: key);

  final TextEditingController _controller;
  final String _label;
  final String _hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: _label,
          hintText: _hint,
        ),
      ),
    );
  }
}

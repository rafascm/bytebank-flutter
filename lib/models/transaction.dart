class Transaction {
  final double value;
  final int acc;

  Transaction({this.value, this.acc});

  String toStringValue() => 'R\$ ' + this.value.toString();
  String toStringAcc() => 'Conta: ' + this.acc.toString();
}

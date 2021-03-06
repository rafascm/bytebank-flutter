import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/balance.dart';
import 'models/transactions.dart';
import 'screens/dashboard/dashboard.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Balance(0)),
          ChangeNotifierProvider(create: (context) => Transactions()),
        ],
        child: ByteBankApp(),
      ),
    );

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bytebank',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: Colors.teal,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.teal,
            textTheme: ButtonTextTheme.primary,
          )),
      home: Dashboard(),
    );
  }
}

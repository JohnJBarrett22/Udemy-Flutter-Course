import 'package:flutter/material.dart';
import 'package:personal_expense_app/transaction.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: '001',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '002',
      title: 'Weekly Groceries',
      amount: 279.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finance Tracker'),
      ),
      body: Column(children: <Widget>[
        Container(
          width: double.infinity,
          child: Card(
            child: Text('Chart'),
          ),
        ),
        Container(
          width: double.infinity,
          child: Column(
            children: transactions.map((tx) {
              return Card(
                child: Text(tx.title),
              );
            }).toList(),
          ),
        )
      ]),
    );
  }
}

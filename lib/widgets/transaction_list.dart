import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/transaction.dart';
import '../models/transaction.dart';

import 'package:intl/intl.dart';

import 'package:intl/intl_browser.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New bike',
      amount: 669.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${tx.amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMMd().format(tx.date),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

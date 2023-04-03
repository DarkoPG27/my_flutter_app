import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
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
      children: <Widget>[
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}

import 'package:expense_app/widgets/newTransaction.dart';
import 'package:expense_app/widgets/transactionList.dart';
import 'package:flutter/material.dart';
import 'package:expense_app/models/Transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  final List<Transcation> _userTransaction = [
    Transcation(id: 't1', title: 'montre', amount: 10.0, date: DateTime.now()),
    Transcation(id: 't2', title: 'bic', amount: 1.0, date: DateTime.now()),
    Transcation(id: 't3', title: 'écouteur', amount: 5.0, date: DateTime.now())
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transcation(
        id: DateTime.now.toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction)
      ],
    );
  }
}

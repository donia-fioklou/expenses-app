import 'package:expense_app/models/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expense_app/widgets/userTransaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transcation> listTransaction;
  TransactionList(this.listTransaction);

  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        children: listTransaction.map((transcation) {
          return Card(
              child: Row(
            children: [
              Container(
                child: Text(
                  '\$${transcation.amount}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 20),
                ),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2)),
                padding: EdgeInsets.all(10),
              ),
              Column(
                children: [
                  Text(
                    transcation.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat.yMMMd().format(transcation.date),
                    style: TextStyle(color: Colors.grey),
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              )
            ],
          ));
        }).toList(),
      ),
    );
  }
}

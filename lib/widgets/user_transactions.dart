// import 'package:flutter/material.dart';
// import '../models/transaction.dart';
// import './new_transaction.dart';
// import './transaction_list.dart';

// class UserTransactions extends StatefulWidget {
//   @override
//   _UserTransactionsState createState() => _UserTransactionsState();
// }

// class _UserTransactionsState extends State<UserTransactions> {
//   final List<Transaction> _userTransaction = [
//     Transaction(
//         id: 't1', title: 'New Shoes', amount: 56.31, date: DateTime.now()),
//     Transaction(
//         id: 't2', title: 'New socks', amount: 36.81, date: DateTime.now())
//   ];

//   void _addNewTransaction(String txTitle, double txAmount) {
//     final newTx = Transaction(
//         id: DateTime.now().toString(),
//         title: txTitle,
//         amount: txAmount,
//         date: DateTime.now());

//     setState(() {
//       _userTransaction.add(newTx);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         NewTransaction(_addNewTransaction),
//         TransactionList(_userTransaction),
//       ],
//     );
//   }
// }

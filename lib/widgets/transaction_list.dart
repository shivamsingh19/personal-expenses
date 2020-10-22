import 'package:flutter/material.dart';
import '../widgets/transaction_item.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? LayoutBuilder(
            builder: (ctx, contraints) {
              return Column(
                children: [
                  Text(
                    'No tracsaction added yet',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: contraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              );
            },
          )
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return TransactionItem(
                  transaction: transactions[index], deleteTx: deleteTx);
            },
            itemCount: transactions.length,
          );
  }
}

// Card(
//                   child: Row(
//                     children: [
//                       Container(
//                         margin:
//                             EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Theme.of(context).primaryColor,
//                             width: 2,
//                           ),
//                         ),
//                         padding: EdgeInsets.all(10),
//                         child: Text(
//                           '\$${transactions[index].amount.toStringAsFixed(2)}',
//                           style: Theme.of(context).textTheme.title,
//                           // style: TextStyle(
//                           //   fontWeight: FontWeight.bold,
//                           //   fontSize: 20,
//                           //   color: Theme.of(context).primaryColor,
//                           // ),
//                         ),
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             transactions[index].title,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16),
//                           ),
//                           Text(
//                             DateFormat('yyyy-MM-dd')
//                                 .format(transactions[index].date),
//                             style: TextStyle(color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );

// child: ListView(
//         children: transactions.map((tx) {
//           return Card(
//             child: Row(
//               children: [
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.purple, width: 2),
//                   ),
//                   padding: EdgeInsets.all(10),
//                   child: Text(
//                     '\$${tx.amount}',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                         color: Colors.purple),
//                   ),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       tx.title,
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                     ),
//                     Text(
//                       DateFormat('yyyy-MM-dd').format(tx.date),
//                       style: TextStyle(color: Colors.grey),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         }).toList(),

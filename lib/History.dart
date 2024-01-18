import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Transaction {
  final String date;
  final String itemName;
  final double amount;
  final String imageNetwork;

  Transaction({
    required this.date,
    required this.itemName,
    required this.amount,
    required this.imageNetwork,
  });
}

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      date: '02-01-2024',
      itemName: 'Oatmilk',
      amount: 88.000,
      imageNetwork:
          'https://lh3.googleusercontent.com/BZZfIUPfx77oBmJO0MiFHuKzmMk-8DmmShnVA7mfo9EBSqeCFfzf992dBkPO4fv0QIuQwDHmqHulMfeQNrh_cRZOUkM6=w600-rw', // Gantilah dengan path gambar yang sesuai
    ),
    Transaction(
      date: '04-01-2024',
      itemName: 'Chocolatte Coffee',
      amount: 130.000,
      imageNetwork:
          'https://i.pinimg.com/originals/f8/52/bc/f852bc0c71c19be0c13a96164380672c.jpg', // Gantilah dengan path gambar yang sesuai
    ),
    Transaction(
      date: '06-01-2024',
      itemName: 'Coffee Latte',
      amount: 59.000,
      imageNetwork:
          'https://i.ytimg.com/vi/zA1WNWGCOx0/hqdefault.jpg', // Gantilah dengan path gambar yang sesuai
    ),
    Transaction(
      date: '06-01-2024',
      itemName: 'Delicius Coffe Misto',
      amount: 76.000,
      imageNetwork:
          'https://lifeboostcoffee.com/cdn/shop/articles/feature-images_7a276196-4e2f-451a-ad99-5d29f31b3df6.jpg?v=1685258251', // Gantilah dengan path gambar yang sesuai
    ),
    Transaction(
      date: '08-01-2024',
      itemName: 'Chocolatte Coffee',
      amount: 130.000,
      imageNetwork:
          'https://i.pinimg.com/originals/f8/52/bc/f852bc0c71c19be0c13a96164380672c.jpg', // Gantilah dengan path gambar yang sesuai
    ),
    Transaction(
      date: '09-01-2024',
      itemName: 'Delicius Coffe Misto',
      amount: 76.000,
      imageNetwork:
          'https://lifeboostcoffee.com/cdn/shop/articles/feature-images_7a276196-4e2f-451a-ad99-5d29f31b3df6.jpg?v=1685258251', // Gantilah dengan path gambar yang sesuai
    ),
    // Tambahkan transaksi lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Starbucks History'),
        ),
        body: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.network(
                  transactions[index].imageNetwork,
                  width: 100,
                  height: 150,
                ),
                title: Text(transactions[index].itemName),
                subtitle: Text(
                    '${transactions[index].date} - \$${transactions[index].amount.toStringAsFixed(2)}'),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Color(0xFF202124),
              size: 30,
            ),
            label: 'Home',
            backgroundColor: Color(0xFFFFFFFF),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Color(0xFF202124),
              size: 30,
            ),
            label: 'List',
            backgroundColor: Color(0xFFFFFFFF),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: Color(0xFF202124),
              size: 30,
            ),
            label: 'History',
            backgroundColor: Color(0xFFFFFFFF),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_sharp,
              color: Color(0xFF202124),
              size: 30,
            ),
            label: 'Account',
            backgroundColor: Color(0xFFFFFFFF),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PosScreen(),
    );
  }
}

class PosScreen extends StatefulWidget {
  @override
  _PosScreenState createState() => _PosScreenState();
}

class _PosScreenState extends State<PosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starbucks Point'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Daftar Pesanan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  OrderItem(name: 'Oatmilk', price: 88.000),
                  OrderItem(name: 'Mocha', price: 120.000),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Total: Rp 208.0000',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Selesaikan Pesanan'),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String name;
  final double price;

  OrderItem({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      trailing: Text('Rp ${price.toStringAsFixed(3)}'),
    );
  }
}

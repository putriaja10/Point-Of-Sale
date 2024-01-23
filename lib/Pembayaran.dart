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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Starbuck Pembayaran'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Ringkasan Pembayaran',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text('Pesanan: '),
              Text(
                '1. Oatmilk',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '2. Chocolate Coffe',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(' '),
              Text('Total Belanja: Rp.208.000'),
              Text('Pajak: Rp.150.00'),
              Text(
                'Total Pembayaran: Rp.209.500',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Pembayaran',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(Icons.credit_card),
                  SizedBox(width: 10.0),
                  Text('Kartu Kredit')
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(Icons.attach_money),
                  SizedBox(width: 10.0),
                  Text('Cahs')
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Bayar Sekarang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

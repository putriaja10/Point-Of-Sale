import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbucks Menu',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starbucks Menu'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MenuItem(
              name: 'Delicius Coffe Misto',
              price: 'Rp. 76.000',
              image:
                  'https://lifeboostcoffee.com/cdn/shop/articles/feature-images_7a276196-4e2f-451a-ad99-5d29f31b3df6.jpg?v=1685258251',
            ),
            MenuItem(
              name: 'Flat With Latte',
              price: 'Rp.59.000',
              image: 'https://i.ytimg.com/vi/zA1WNWGCOx0/hqdefault.jpg',
            ),
            MenuItem(
              name: 'Picks From Coffe ',
              price: 'Rp. 78.000',
              image:
                  'https://stories.starbucks.com/uploads/2021/07/SBX20210707-ColdCoffees-Starbucks-Cold-Brew.jpg',
            ),
            MenuItem(
              name: 'White and Brown',
              price: 'Rp. 98.000',
              image:
                  'https://images.unsplash.com/photo-1592321675774-3de57f3ee0dc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c3RhcmJ1a3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
            ),
            MenuItem(
              name: 'Oatmilk',
              price: 'Rp. 88.000',
              image:
                  'https://lh3.googleusercontent.com/BZZfIUPfx77oBmJO0MiFHuKzmMk-8DmmShnVA7mfo9EBSqeCFfzf992dBkPO4fv0QIuQwDHmqHulMfeQNrh_cRZOUkM6=w600-rw',
            ),
            MenuItem(
              name: 'Chocolate Coffe ',
              price: 'Rp. 130.000',
              image:
                  'https://i.pinimg.com/originals/f8/52/bc/f852bc0c71c19be0c13a96164380672c.jpg',
            ),
          ],
        ),
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
    );
  }
}

class MenuItem extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  MenuItem({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
            image,
            height: 200.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Price: $price',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

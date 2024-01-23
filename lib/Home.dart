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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Menu> menuItems = [
    Menu(
      name: 'Chocolatte',
      description: 'full chocolate and a thick layer of foam.',
      imageUrl:
          'https://1.bp.blogspot.com/-z9IsysET9PA/VEW4Dleys4I/AAAAAAAAeTo/abOdujAYZa8/s1600/1.jpg',
    ),
    Menu(
      name: 'Cappuccino & Matcha',
      description: ' capucino, matcha and a thick layer of foam.',
      imageUrl:
          'https://2.bp.blogspot.com/-BTEhf9od2GY/VctL5NdQZDI/AAAAAAAANJ4/5JOwgqISn-c/s1600/starbucks%2Bx%2Bnst.png',
    ),
    Menu(
      name: 'Dreamy Treats',
      description: 'strrawbery,manggo, jelly, and a thick layer of foam.',
      imageUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhhtQEvqRnKx1P0__dG-_Tbc7OI3HebiuvQpQ8_QRVzNjFzcoWop0PYheIes7rKhUlnvTaP8gKS1nnPYyHtEQmE7DaE39F2BBbecqRPLvIEzmaJnksnYKA4wR9q84NTPBAFP0FkUeN1lpNnUJgn9eH_zeCT9nTk5LTp3F7SIJbRmHpbT9DYb3kuzXrk/s16000',
    ),
    Menu(
      name: 'Greantea & Brown',
      description: 'Greantea, brown sugar and a thick layer of foam.',
      imageUrl:
          'https://asset-a.grid.id/crop/75x39:666x453/945x630/photo/2023/01/23/whatsapp-image-2023-01-23-at-16-20230123041106.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.network(
              'https://www.freepnglogos.com/uploads/starbucks-coffe-logo-hd-image-15.png',
              height: 40.0,
            ),
            SizedBox(width: 8.0),
            Text('Starbucks'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian Promosi atau Item Khusus
            Container(
              width: double.infinity,
              height: 150.0,
              child: Card(
                elevation: 5.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://starbucks-web-prod.oss-ap-southeast-5.aliyuncs.com/image/temporary/summernote_image_1690889548.jpg',
                      width: double.infinity,
                      height: 130.0,
                    ),
                  ],
                ),
              ),
            ),

            // Bagian Menu Starbucks
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Promo Spesial Akhir Tahun',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: menuItems.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return MenuCard(menu: menuItems[index]);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: Color(0xFF0000FF),
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

class Menu {
  final String name;
  final String description;
  final String imageUrl;

  Menu({required this.name, required this.description, required this.imageUrl});
}

class MenuCard extends StatelessWidget {
  final Menu menu;

  MenuCard({required this.menu});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            menu.imageUrl,
            height: 100.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menu.name,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(
                  menu.description,
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

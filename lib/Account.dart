import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyAccountScreen(),
    );
  }
}

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starbuck Account'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
                radius: 50,
                child: Image.network(
                    'https://acehprov.go.id/thumbnail/700x0/media/2020.07/starbucks.jpg')
                //child: Icon(Icons.account_circle, size: 100),
                ),
            SizedBox(height: 10),
            Text(
              'Admin Starbuck',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Starbuck19@gmail.com', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan Akun'),
              onTap: () {
                // Tambahkan logika untuk pindah ke layar pengaturan akun
                // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text('Lokasi'),
              onTap: () {
                // Tambahkan logika untuk pindah ke layar ganti kata sandi
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Ganti Kata Sandi'),
              onTap: () {
                // Tambahkan logika untuk pindah ke layar ganti kata sandi
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Keluar'),
              onTap: () {
                // Tambahkan logika untuk keluar dari akun
              },
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarController extends StatefulWidget {
  const TabBarController({super.key});

  @override
  State<TabBarController> createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logoon'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.power_settings_new),
            onPressed: () => Navigator.pushNamed(context, "/LoginPage"),
          ),
        ],
        backgroundColor: Colors.orange,
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => Navigator.pushNamed(context, "/hesap"),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 80),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () =>
                  Navigator.pushNamed(context, "/tabBarController"),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => Navigator.pushNamed(context, "/arama"),
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => Navigator.pushNamed(context, "/gonderi"),
            ),
            IconButton(
              icon: const Icon(Icons.newspaper),
              onPressed: () => Navigator.pushNamed(context, "/etkinlikler"),
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => Navigator.pushNamed(context, "/ayarlar"),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Akış',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}

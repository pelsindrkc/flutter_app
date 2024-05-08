import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hesap extends StatefulWidget {
  const hesap({super.key});

  @override
  State<hesap> createState() => _hesapState();
}

class _hesapState extends State<hesap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent,
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage("assets/images/selcuk.jpg"),
              ),
              Text(
                "Selçuk Üniversitesi",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.alternate_email),
                        Text(
                          "selcukedu@gmail.com",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.add_a_photo_outlined),
                        Text(
                          "Gönderiler",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.face),
                        Text(
                          "Arkadaşlar",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.newspaper),
                        Text(
                          "Etkinlikler",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

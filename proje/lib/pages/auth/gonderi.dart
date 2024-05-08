import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gonderi extends StatefulWidget {
  const gonderi({super.key});

  @override
  State<gonderi> createState() => _gonderiState();
}

class _gonderiState extends State<gonderi> {
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/cute.jpg",
                width: 300,
                height: 300,
              ),
              CustomButton(
                title: 'Pick from Galery',
                icon: Icons.image_outlined,
                onClick: () => {},
              ),
              CustomButton(
                title: 'Pick from Camera',
                icon: Icons.camera_alt,
                onClick: () => {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: customInputDecoration("Duygularınızı Paylaşın"),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, "/gonderi"),
                child: Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      "Paylaş",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

InputDecoration customInputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.orange),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.orange,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.orange,
      ),
    ),
  );
}

Widget CustomButton({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}) {
  return Container(
    width: 280,
    child: ElevatedButton(
      onPressed: onClick,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 10,
          ),
          Text(title)
        ],
      ),
    ),
  );
}

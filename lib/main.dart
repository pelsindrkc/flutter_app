import 'package:flutter/material.dart';
import 'package:proje/pages/auth/arama.dart';
import 'package:proje/pages/auth/ayarlar.dart';
import 'package:proje/pages/auth/etkinlikler.dart';
import 'package:proje/pages/auth/gonderi.dart';
import 'package:proje/pages/auth/hesap.dart';
import 'package:proje/pages/auth/kayit_ol.dart';
import 'package:proje/pages/auth/login_page.dart';
import 'package:proje/pages/tab_bar_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        "/LoginPage": (context) => LoginPage(),
        "/kayitOl": (context) => KayitOl(),
        "/tabBarController": (context) => TabBarController(),
        "/gonderi": (context) => gonderi(),
        "/arama": (context) => arama(),
        "/etkinlikler": (context) => etkinlikler(),
        "/ayarlar": (context) => ayarlar(),
        "/hesap": (context) => hesap(),
      },
    );
  }
}

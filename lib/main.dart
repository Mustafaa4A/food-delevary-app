import 'package:flutter/material.dart';
import 'package:food_order_app/pages/cart_page.dart';
import 'package:food_order_app/pages/home_page.dart';
import 'package:food_order_app/pages/items_page.dart';
import 'package:food_order_app/pages/login_page.dart';
import 'package:food_order_app/pages/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(canvasColor: const Color.fromARGB(100, 70, 100, 100)),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginPage(),
        'home': (context) => const HomePage(),
        'cart': (context) => const CartPage(),
        'profile': (context) => const ProfilePage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pizza/screens/cart_screen.dart';
import 'package:pizza/screens/home_screen.dart';
import 'package:pizza/screens/intro_screen.dart';
import 'package:pizza/screens/profile_screen.dart';
import 'package:pizza/screens/view_pizza_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      initialRoute: "/",
      routes: {
        "/": (context) => const IntroScreen(),
        "/home": (context) => const HomeScreen(),
        "/view": (context) => const ViewPizzaScreen(),
        "/cart": (context) => const CartScreen(),
        "/profile": (context) => const ProfileScreen(),
      },
    );
  }
}

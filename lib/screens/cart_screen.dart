import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A P P B A R"),
        elevation: 0,
      ),
      body: const SafeArea(
          child: Center(
        child: Text(
          "CartScreen",
          style: TextStyle(fontSize: 20),
        ),
      )),
    );
  }
}

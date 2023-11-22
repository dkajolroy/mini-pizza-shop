import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
          "Profile Screen",
          style: TextStyle(fontSize: 20),
        ),
      )),
    );
  }
}

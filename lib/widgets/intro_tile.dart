import 'package:flutter/material.dart';

class IntroTile extends StatelessWidget {
  final String startTitle;
  final String endTitle;
  const IntroTile(
      {super.key, required this.startTitle, required this.endTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          startTitle,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        Text(
          endTitle,
          style: const TextStyle(
              color: Colors.orange, fontWeight: FontWeight.w500, fontSize: 30),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          size: 12,
          color: Colors.orange,
        ),
        Icon(
          Icons.star,
          size: 12,
          color: Colors.orange,
        ),
        Icon(
          Icons.star,
          size: 12,
          color: Colors.orange,
        ),
        Icon(
          Icons.star_half,
          size: 12,
          color: Colors.orange,
        ),
        Icon(
          Icons.star_outline,
          size: 12,
          color: Colors.orange,
        ),
      ],
    );
  }
}

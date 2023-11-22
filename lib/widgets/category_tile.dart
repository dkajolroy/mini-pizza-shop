import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: const EdgeInsets.all(5),
      child: Row(children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration:
              BoxDecoration(color: Colors.grey[900], shape: BoxShape.circle),
          child: const Icon(
            Icons.person,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text("Pizza")
      ]),
    );
  }
}

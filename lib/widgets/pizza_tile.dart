import 'package:flutter/material.dart';
import 'package:pizza/widgets/rating.dart';

class PizzaTile extends StatelessWidget {
  const PizzaTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/view");
              },
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset("lib/assets/pizza.png")),
                  const Text("Pizza Name"),
                  const Rating()
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "\$15",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20))),
                    backgroundColor: Colors.orange,
                  ),
                  child: const Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}

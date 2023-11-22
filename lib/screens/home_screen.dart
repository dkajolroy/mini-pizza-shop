import 'package:flutter/material.dart';
import 'package:pizza/widgets/category_tile.dart';
import 'package:pizza/widgets/pizza_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  FloatingActionButton(
                      backgroundColor: Colors.white,
                      mini: true,
                      onPressed: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "lib/assets/user.jpg",
                          fit: BoxFit.cover,
                          height: 40,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Hello Kajol")
                ],
              ),
              FloatingActionButton(
                  backgroundColor: Colors.grey[900],
                  foregroundColor: Colors.white,
                  mini: true,
                  onPressed: () {},
                  child: const Icon(
                    Icons.notifications_outlined,
                    size: 30,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Find Your mood \ntoday",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            child: TextFormField(
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                hintText: "Search your food",
                border: InputBorder.none,
                suffixIconColor: Colors.grey,
                suffixIcon: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Category"),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryTile(),
                SizedBox(
                  width: 10,
                ),
                CategoryTile(),
                SizedBox(
                  width: 10,
                ),
                CategoryTile(),
                SizedBox(
                  width: 10,
                ),
                CategoryTile(),
                SizedBox(
                  width: 10,
                ),
                CategoryTile(),
                SizedBox(
                  width: 10,
                ),
                CategoryTile(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: .8,
            children: const [
              PizzaTile(),
              PizzaTile(),
              PizzaTile(),
              PizzaTile(),
              PizzaTile(),
              PizzaTile(),
              PizzaTile(),
              PizzaTile(),
              PizzaTile(),
              PizzaTile(),
              PizzaTile(),
            ],
          ))
        ],
      ),
    )));
  }
}

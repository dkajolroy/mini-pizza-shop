import 'package:flutter/material.dart';
import 'package:pizza/widgets/rating.dart';

class ViewPizzaScreen extends StatelessWidget {
  const ViewPizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[800]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Image.asset(
                          "lib/assets/pizza.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Pizza Name",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Rating(),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const Text(
                          "Lorem ipsum dolor sit amet, consectetur adip eget null  tempor a ante et dolore magna al"),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$12",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.grey[900],
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.orange,
                                  mini: true,
                                  foregroundColor: Colors.white,
                                  onPressed: () {},
                                  child: const Icon(Icons.add),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Size"),
                            Row(
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.orange,
                                  onPressed: () {},
                                  child: const Text("S"),
                                ),
                                FloatingActionButton(
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.grey[800],
                                  onPressed: () {},
                                  child: const Text("M"),
                                ),
                                FloatingActionButton(
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.grey[800],
                                  onPressed: () {},
                                  child: const Text("L"),
                                ),
                                FloatingActionButton(
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.grey[800],
                                  onPressed: () {},
                                  child: const Text("XL"),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Info"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text(
                                "\$12",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    foregroundColor: Colors.white),
                                onPressed: () {},
                                child: const SizedBox(
                                  width: 200,
                                  height: 30,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Go To Cart"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.arrow_forward)
                                    ],
                                  ),
                                ))
                          ],
                        )
                      ],
                    )))
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:pizza/widgets/intro_tile.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: 280,
                          height: 280,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(300))),
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("lib/assets/pizza.png"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const IntroTile(startTitle: "Good ", endTitle: "Food"),
                  const IntroTile(startTitle: "Good ", endTitle: "Mood"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 1,
                  )
                ],
              )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      fixedSize: const Size(300, 40),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.orange[700]),
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: const Text("Sign in")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account ? "),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ))
        ],
      ),
    ));
  }
}

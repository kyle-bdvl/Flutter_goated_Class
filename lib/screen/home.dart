import "package:flutter/material.dart";
import 'package:sanjay_my_goat/block.dart';

class HomePage extends StatelessWidget {
  final bool isDarkMode;
  final void Function() onToggleTheme;

  const HomePage({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  // Declaring a function
  void doSomething() {
    // print bla
    print("Bla bla");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: doSomething,
          icon: const Icon(Icons.menu),
        ),
        backgroundColor: Colors.blue,
        title: const Text("Profile"),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: onToggleTheme,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ClipOval(
              child: Image.asset(
                'assets/images/kokHao.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Kok Hao",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(88.888),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.school, size: 17, color: Colors.yellow),
                  SizedBox(width: 4),
                  Text(
                    "Student",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Block(
                    "some title",
                    "assets/images/Sanjay.png",
                    colour: Colors.green,
                    number: 19,
                  ),
                  Block(
                    "some dummy text",
                    "assets/images/kokHao.png",
                    colour: Colors.green,
                  ),
                  Block(
                    "bla bla bla",
                    "assets/images/kokHao.png",
                    colour: Colors.blue,
                  ),
                  Block(
                    "bla bla bla",
                    "assets/images/kokHao.png",
                    colour: Colors.purpleAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

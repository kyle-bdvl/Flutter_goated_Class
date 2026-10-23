import 'package:flutter/material.dart';

void main() {
  runApp(const Towa());
}

class Towa extends StatelessWidget {
  const Towa({super.key});

  // Declaring a function
  void doSomething() {
    // print bla
    print("Bla bla");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: Colors.blue,
          title: const Text("Profile"),
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
            ],
          ),
        ),
      ),
    );
  }
}

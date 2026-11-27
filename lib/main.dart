import 'package:flutter/material.dart';
import 'package:sanjay_my_goat/block.dart';
import 'package:sanjay_my_goat/screen/home.dart';

void main() {
  runApp(const Towa());
}

class Towa extends StatefulWidget {
  const Towa({super.key});

  @override
  State<Towa> createState() => _TowaState();
}

class _TowaState extends State<Towa> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

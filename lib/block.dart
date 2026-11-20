import "package:flutter/material.dart";

class Block extends StatelessWidget {
  const Block(
    this.title,
    this.image, {
    super.key,
    required this.colour,
    this.number = 0,
  });

  final String title;
  final String image;
  final Color colour;
  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(color: Colors.yellowAccent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 50,
          ),
          const SizedBox(height: 10),
          Text(title),
          const SizedBox(height: 10),
          Text("$number"),
        ],
      ),
    );
  } //build context
}

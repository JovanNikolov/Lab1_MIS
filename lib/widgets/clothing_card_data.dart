import 'package:flutter/material.dart';

class ClothingCardData extends StatelessWidget {
  final String name;
  final String img;
  final String description;
  final int price;

  const ClothingCardData({super.key, required this.name, required this.img, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.network(img, fit: BoxFit.contain, alignment: Alignment.bottomRight)),
        const Divider(),
        Text("${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 21, color: Colors.black87),
        ),
        Text("$price" "\$",
          style: const TextStyle(fontSize: 21, color: Colors.black87),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';

class DetailPrice extends StatelessWidget {
  final int price;
  const DetailPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Chip(backgroundColor: Colors.white,
      label: Text("$price" "\$",
            style: const TextStyle(fontSize: 21, color: Colors.black87),
          )
    );
  }
}
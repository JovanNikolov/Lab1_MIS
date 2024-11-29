import 'package:flutter/material.dart';

class DetailDescription extends StatelessWidget {
  final String description;
  const DetailDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context){
    return RichText(text: TextSpan(
      text: "${description[0]}${description.substring(1)}",
      style: const TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
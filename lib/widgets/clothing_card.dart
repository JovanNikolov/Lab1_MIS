import 'package:flutter/material.dart';
import '../../models/clothing_model.dart';
import '../../widgets/clothing_card_data.dart';

class ClothingCard extends StatelessWidget {
  final int id;
  final String name;
  final String img;
  final String description;
  final int price;

  const ClothingCard({super.key,
    required this.id,
    required this.name,
    required this.img,
    required this.description,
    required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.blue[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Clothing(id: id,name: name,img: img,description:  description,price:  price))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ClothingCardData(name: name, img: img, description: description, price: price),
        ),
      ),
    );
  }
}
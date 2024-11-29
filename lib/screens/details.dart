import 'package:flutter/material.dart';
import '../models/clothing_model.dart';

import '../widgets/detail_back_button.dart';
import '../widgets/detail_image.dart';
import '../widgets/detail_title.dart';
import '../widgets/detail_description.dart';
import '../widgets/detail_price.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Clothing;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.img),
            DetailTitle(id: arguments.id, name: arguments.name),
            DetailPrice(price: arguments.price),
            DetailDescription(description: arguments.description),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}
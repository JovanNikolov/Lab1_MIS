import 'package:flutter/material.dart';

import '../models/clothing_model.dart';
import '../widgets/clothing_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{
  List<Clothing> clothing = [
    Clothing(id: 0, name: "Dr.Martens", img: "https://image-resizing.booztcdn.com/dr-martens/dms15265_cblack.webp?has_grey=1&has_webp=0&dpr=2.5&size=w400", description: "Description about the boots.", price: 100),
    Clothing(id: 1, name: "Leather Jacket", img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSodzPE2W0CWd_STHuIJlZuG2xm8tc7knZSvg&s", description: "Description about the jacket.", price: 65),
    Clothing(id: 2, name: "Watch DeepSea", img: "https://media.wired.com/photos/66180ed0c1ba76f5ce2ff268/master/pass/Rolex.jpg", description: "Beautiful watch", price: 999),
    Clothing(id: 3, name: "Levi's", img: "https://i.ebayimg.com/images/g/GpQAAOSwMdhmXDFM/s-l1200.jpg", description: "Some description about trousers", price: 49),
    Clothing(id: 4, name: "Fancy Dress", img: "https://aroka.in/cdn/shop/files/Aroka06-10-233944_fa19b681-8a87-4c40-8f8d-70e87d24b3ba.jpg?v=1724408298&width=1445", description: "Fine fancy dress.", price: 120),
    Clothing(id: 5, name: "Summer Dress", img: "https://i.etsystatic.com/8719802/r/il/e174c4/5842791451/il_570xN.5842791451_6ons.jpg", description: "Nice summer dress", price: 39),
    Clothing(id: 6, name: "Scarf", img: "https://image.hm.com/assets/hm/51/e2/51e2dcb84dc737adc2e04251babc8c8f56186abd.jpg", description: "Red warm scarf", price: 9)
  ];

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlueAccent[200],
        leading: IconButton(onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
        title: const Text("192067", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: ClothingGrid(clothing: clothing),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }

}
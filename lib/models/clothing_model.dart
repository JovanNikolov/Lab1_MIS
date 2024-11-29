class Clothing{
  int id;
  String name;
  String img;
  String description;
  int price;

  Clothing({required this.id,required this.name,required this.img,required this.description,required this.price});

  Clothing.fromJson(Map<String, dynamic> data)
    : id = data['id'],
      name = data['name'],
      img = data['img'],
      description = data['description'],
      price = data['price'];

  Map<String, dynamic> toJson() => {'id': id,'name': name, 'img': img, 'description': description, 'price': price};
}
class Item {
  // constructor(name, sellIn, quality) {}
  final int id;
  final String name;
  final String desc;
  final num price;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.image});

  factory Item.fromMap(Map<dynamic, dynamic> map) {
      //  print("Item from Map");
      //   print('map: $map');
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        'name': name,
        "desc": desc,
        "price": price,
        "image": image,
      };
}

class CatalogModel {
  static List<Item> item = [
    Item(
        id: 1,
        name: "I Phone 14 Pro Max",
        desc: "Apple I Phone's 14 Generation",
        price: 999,
        image:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/mobile/6/x/j/-original-imaghxejqvpwfqh2.jpeg?q=90"),
  ];
}

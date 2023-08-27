class item {
  // constructor(name, sellIn, quality) {}
  final String id;
  final String name;
  final String desc;
  final num price;
  final String image;

  item({required this.id, 
  required this.name, 
  required this.desc, 
  required this.price, 
  required this.image});
}

final product = [
  item(
      id: "Kushaz001",
      name: "I Phone 14 Pro Max",
      desc: "Apple I Phone's 14 Generation",
      price: 999,
      image:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/mobile/6/x/j/-original-imaghxejqvpwfqh2.jpeg?q=90"),
];

class Item {
  // constructor(name, sellIn, quality) {}
  final int id;
  final String name;
  final String desc;
  final num price;
  final String image;

  
  Item({required this.id, 
  required this.name, 
  required this.desc, 
  required this.price, 
  required this.image});
}

class CatalogModel {
static final items = [
  Item(
      id: 1,
      name: "I Phone 14 Pro Max",
      desc: "Apple I Phone's 14 Generation",
      price: 999,
      image:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/mobile/6/x/j/-original-imaghxejqvpwfqh2.jpeg?q=90"),
];


}




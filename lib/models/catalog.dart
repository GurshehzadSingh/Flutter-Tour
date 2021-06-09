class CatalogModel{
  static final items=[
    Item(
    id: 1,
    name: "Samsung M31 A",
    desc: "A Samsung Mobile working on Android with 6GB RAM.",
    price: 17000,
    color: "#33505a",
    image: "https://static.digit.in/default/db80c6f12355307b593c0af60ad5403adbd2ab06.jpeg?tr=1200"
  )
  ];
}

class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String  image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products=[
  
];
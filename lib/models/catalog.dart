class CatalogModel {
  static List<Item> items;
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  });

  factory Item.fromMap(Map<String, dynamic> mapper) {
    return Item(
      id: mapper["id"],
      name: mapper["name"],
      desc: mapper["desc"],
      price: mapper["price"],
      color: mapper["color"],
      image: mapper["image"],
    );
  }
}

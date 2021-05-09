class CatalogModel {
  static final product = [
    Item(
        id: "1",
        name: "iPhone 12 Pro Max",
        desc:
            "Roll over image to zoom in New Apple iPhone 12 Pro Max (128GB, Pacific Blue) [Locked] + Carrier Subscription",
        price: 999,
        color: "red",
        imgUrl: "https://m.media-amazon.com/images/I/71MHTD3uL4L._FMwebp__.jpg")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imgUrl;

  Item({this.id, this.name, this.desc, this.price, this.color, this.imgUrl});
// contructor

}

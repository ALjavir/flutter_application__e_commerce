import 'dart:core';

class Itemdata {
  String image;
  String off;
  String name;
  String off_price;
  String price;

  Itemdata(this.image, this.off, this.name, this.off_price, this.price);
}

List<Itemdata> itemlist = [
  Itemdata("assets/image/Vector (1).png", "50% OFF", "Redmi Note 4", "45,000",
      "55,000"),
  Itemdata("assets/image/Vector (2).png", "50% OFF", "Redmi Note 4", "45,000",
      "55,000"),
  // Itemdata(
  //     "assets/image/w2.png", "50% OFF", "Apple Watch - series 6", 45000, 55000),
  // Itemdata("assets/image/w1.png", "50% OFF", "Redmi Note 4", 45000, 55000),
  // Itemdata(
  //     "assets/image/w2.png", "50% OFF", "Apple Watch - series 6", 45000, 55000),
  // Itemdata("assets/image/w1.png", "50% OFF", "Redmi Note 4", 45000, 55000),
  // Itemdata(
  //     "assets/image/w2.png", "50% OFF", "Apple Watch - series 6", 45000, 55000),
  // Itemdata("assets/image/w1.png", "50% OFF", "Redmi Note 4", 45000, 55000),
  // Itemdata(
  //     "assets/image/w2.png", "50% OFF", "Apple Watch - series 6", 45000, 55000),
  // Itemdata("assets/image/w1.png", "50% OFF", "Redmi Note 4", 45000, 55000),
  // Itemdata(
  //     "assets/image/w2.png", "50% OFF", "Apple Watch - series 6", 45000, 55000),
];

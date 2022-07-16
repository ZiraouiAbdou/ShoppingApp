import 'package:flutter/material.dart';

class Product {
  String name, description, image;
  double price, size;
  Color color;
  Product(
      {required this.image,
      required this.name,
      required this.description,
      required this.color,
      required this.price,
      required this.size});
}

List<Product> products = [
  Product(
    name: 'Shoes A',
    price: 234,
    size: 40,
    description: dummyText,
    image: "assets/images/cyan.png",
    color: Color(0xFF3D82AE),
  ),
  Product(
    name: 'Shoes B',
    price: 114,
    size: 37,
    description: dummyText,
    image: "assets/images/Brown_Heels.png",
    color: Color.fromARGB(255, 103, 33, 33),
  ),
  Product(
      name: 'Shoes C',
      price: 234,
      size: 36,
      description: dummyText,
      image: "assets/images/blue.png",
      color: Color.fromARGB(255, 11, 33, 205)),
  Product(
      name: 'Shoes D',
      price: 70,
      size: 39,
      description: dummyText,
      image: "assets/images/Yellow_Heels.png",
      color: Color.fromARGB(255, 215, 226, 5)),
  Product(
      name: 'Shoes E',
      price: 234,
      size: 39,
      description: dummyText,
      image: "assets/images/brown.png",
      color: Color(0xFFD3A984)),
  Product(
    name: 'Shoes F',
    price: 120,
    size: 38,
    description: dummyText,
    image: "assets/images/green.png",
    color: Color.fromARGB(255, 10, 208, 66),
  ),
  Product(
      name: 'Shoes G',
      price: 234,
      size: 36,
      description: dummyText,
      image: "assets/images/pink.png",
      color: Color.fromARGB(255, 201, 10, 147)),
  Product(
    name: 'Shoes H',
    price: 89,
    size: 34,
    description: dummyText,
    image: "assets/images/Blue_Heels.png",
    color: Color.fromARGB(255, 15, 32, 189),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

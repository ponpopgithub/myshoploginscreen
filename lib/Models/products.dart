import 'package:flutter/material.dart';

class Product {
  final String imagePath;
  final String name;
  final String description;
  final String buttonText;
  final double price;
  final String productInfo;
  final Color backgroundColor;

  Product({
    required this.imagePath,
    required this.name,
    required this.description,
    this.buttonText = "Buy Now",
    required this.price,
    this.productInfo = "",
    required this.backgroundColor,
  });
}

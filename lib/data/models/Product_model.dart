import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final isFavourite, isPopular;

  Product({
    @required this.title,
    @required this.description,
    @required this.images,
    @required this.colors,
    @required this.price,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}

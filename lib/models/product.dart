import 'package:flutter/services.dart';

class Product {
  final int id;
  final List<String> image;
  final String title;
  final String brandName;
  final String description;
  final String price;
  final String ratting;
  final List<Color> colors;
  final List<String> sizes;
  final bool isFavorite;
  Product(
        {required this.id,
        required this.title,
        required this.image,
        required this.brandName,
        required this.colors,
        required this.ratting,
        required this.sizes,
        required this.isFavorite,
        required this.description,
        required this.price});
}

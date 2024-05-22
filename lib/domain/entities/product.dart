import 'package:fake_store/data/models/category.dart';
import 'package:fake_store/data/models/rating_model.dart';

class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final Category category;
  final String image;
  final RatingModel rating;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
}

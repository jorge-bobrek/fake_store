import 'package:fake_store/data/models/rating_model.dart';
import 'package:fake_store/domain/utils/category_enum.dart';

abstract class ProductEntity {
  final int? id;
  final String? title;
  final String? description;
  final double? price;
  final Category? category;
  final String? image;
  final RatingModel? rating;

  ProductEntity({
    this.id,
    this.title,
    this.description,
    this.price,
    this.category,
    this.image,
    this.rating
  });
}

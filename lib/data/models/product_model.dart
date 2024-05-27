import 'package:fake_store/domain/entities/product_entity.dart';

import '../../domain/utils/category_enum.dart';
import 'rating_model.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    super.id,
    super.title,
    super.price,
    super.description,
    super.category,
    super.image,
    super.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return ProductModel();
    }
    return ProductModel(
      id: json["id"] ?? 0,
      title: json["title"] ?? '',
      price: json["price"].toDouble() ?? 0.0,
      description: json["description"] ?? '',
      category: categoryValues.map[json["category"]] ?? Category.other,
      image: json["image"] ?? '',
      rating: json["rating"] != null
          ? RatingModel.fromJson(json["rating"])
          : RatingModel(),
    );
  }

  Map<String, dynamic>? toJson() {
    if (id == null && title == null && price == null && description == null && category == null && image == null && rating == null) {
      return null;
    }
    return {
      "id": id,
      "title": title,
      "price": price,
      "description": description,
      "category": categoryValues.reverse[category],
      "image": image,
      "rating": rating?.toJson(),
    };
  }
}

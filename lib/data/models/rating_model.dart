import 'package:fake_store/domain/entities/rating_entity.dart';

class RatingModel extends RatingEntity {
  RatingModel({
    super.rate,
    super.count,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) => RatingModel(
        rate: json["rate"]?.toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}

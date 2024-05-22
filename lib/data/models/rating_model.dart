import 'package:fake_store/domain/entities/rating.dart';

class RatingModel extends Rating {
  RatingModel({
    required super.rate,
    required super.count,
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

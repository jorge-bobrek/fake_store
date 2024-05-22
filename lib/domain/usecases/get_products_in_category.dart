import 'package:dartz/dartz.dart';
import 'package:fake_store/data/models/category.dart';
import 'package:fake_store/domain/entities/product.dart';
import 'package:fake_store/domain/repositories/product_repository.dart';

class GetProductsInCategory {
  final ProductRepository repository;

  GetProductsInCategory(this.repository);

  Future<Either<List<Product>, String>> call(Category category) {
    return repository.getProductsInCategory(category);
  }
}

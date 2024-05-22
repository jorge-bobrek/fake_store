import 'package:dartz/dartz.dart';
import 'package:fake_store/data/models/category.dart';
import 'package:fake_store/domain/entities/product.dart';

abstract class ProductRepository {
  Future<Either<List<Product>, String>> getProductsList();
  Future<Either<Product, String>> getProduct(int id);
  Future<Either<List<Product>, String>> getProductsInCategory(Category category);
}

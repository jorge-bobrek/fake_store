import 'package:dartz/dartz.dart';
import 'package:fake_store/domain/utils/category_enum.dart';
import 'package:fake_store/domain/entities/product_entity.dart';

abstract class IProductRepository {
  Future<Either<List<ProductEntity>, String>> getProductsList();
  Future<Either<ProductEntity, String>> getProduct(int id);
  Future<Either<List<ProductEntity>, String>> getProductsInCategory(
      Category category);
}

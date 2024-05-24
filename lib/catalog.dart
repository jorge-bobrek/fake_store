import 'package:fake_store/data/repositories/product_repository_impl.dart';
import 'package:fake_store/data/sources/product_remote_data_source.dart';
import 'package:fake_store/domain/entities/product_entity.dart';
import 'package:fake_store/domain/utils/category_enum.dart';
import 'package:dartz/dartz.dart';

class Catalog {
  final repository = ProductRepositoryImpl(ProductRemoteDataSource());

  Future<Either<List<ProductEntity>, String>> getProductsList() async =>
      repository.getProductsList();

  Future<Either<ProductEntity, String>> getProduct(int id) async =>
      repository.getProduct(id);

  Future<Either<List<ProductEntity>, String>> getProductsInCategory(
          Category category) async =>
      repository.getProductsInCategory(category);
}

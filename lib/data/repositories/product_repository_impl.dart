import 'package:dartz/dartz.dart';
import 'package:fake_store/data/models/category.dart';
import 'package:fake_store/data/sources/product_remote_data_source.dart';
import 'package:fake_store/domain/entities/product.dart';
import 'package:fake_store/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<List<Product>, String>> getProductsList() {
    return remoteDataSource.getProductsList();
  }

  @override
  Future<Either<Product, String>> getProduct(int id) {
    return remoteDataSource.getProduct(id);
  }

  @override
  Future<Either<List<Product>, String>> getProductsInCategory(Category category) {
    return remoteDataSource.getProductsInCategory(category);
  }
}

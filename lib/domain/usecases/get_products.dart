import 'package:dartz/dartz.dart';
import 'package:fake_store/domain/entities/product.dart';
import 'package:fake_store/domain/repositories/product_repository.dart';

class GetProducts {
  final ProductRepository repository;

  GetProducts(this.repository);

  Future<Either<List<Product>, String>> call() {
    return repository.getProductsList();
  }
}
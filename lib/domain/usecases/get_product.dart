import 'package:dartz/dartz.dart';
import 'package:fake_store/domain/entities/product.dart';
import 'package:fake_store/domain/repositories/product_repository.dart';

class GetProduct {
  final ProductRepository repository;

  GetProduct(this.repository);

  Future<Either<Product, String>> call(int id) {
    return repository.getProduct(id);
  }
}

import 'package:dartz/dartz.dart';
import 'package:fake_store/domain/entities/product_entity.dart';
import 'package:fake_store/domain/repositories/interfaces/product_repository.dart';

class GetProduct {
  final IProductRepository repository;

  GetProduct(this.repository);

  Future<Either<ProductEntity, String>> call(int id) {
    return repository.getProduct(id);
  }
}

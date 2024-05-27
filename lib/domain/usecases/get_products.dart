import 'package:dartz/dartz.dart';
import 'package:fake_store/domain/entities/product_entity.dart';
import 'package:fake_store/domain/repositories/interfaces/product_repository.dart';

class GetProducts {
  final IProductRepository repository;

  GetProducts(this.repository);

  Future<Either<List<ProductEntity>, String>> call() {
    return repository.getProductsList();
  }
}

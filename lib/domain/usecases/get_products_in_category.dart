import 'package:dartz/dartz.dart';
import 'package:fake_store/domain/utils/category_enum.dart';
import 'package:fake_store/domain/entities/product_entity.dart';
import 'package:fake_store/domain/repositories/interfaces/product_repository.dart';

class GetProductsInCategory {
  final IProductRepository repository;

  GetProductsInCategory(this.repository);

  Future<Either<List<ProductEntity>, String>> call(Category category) {
    return repository.getProductsInCategory(category);
  }
}

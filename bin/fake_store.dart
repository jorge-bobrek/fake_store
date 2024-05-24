import 'package:fake_store/domain/entities/product_entity.dart';
import 'package:fake_store/catalog.dart' as fake_store;
import 'package:fake_store/domain/utils/category_enum.dart';

void main(List<String> arguments) async {
  final catalog = fake_store.Catalog();

  final product = await catalog.getProduct(7);
  final productList = await catalog.getProductsList();
  final productInCategoryList =
      await catalog.getProductsInCategory(Category.electronics);

  print("╔══════════════════════════════╗");
  print("║ Producto #7:                 ║");
  print("╚══════════════════════════════╝");
  product.fold(
    (product) => printProduct(product),
    (error) => print(error),
  );
  print("╔══════════════════════════════╗");
  print("║ Todos los productos:         ║");
  print("╚══════════════════════════════╝");
  productList.fold(
    (list) => printProductList(list),
    (error) => print(error),
  );
  print("╔══════════════════════════════╗");
  print("║ Productos tipo electronicos: ║");
  print("╚══════════════════════════════╝");
  productInCategoryList.fold(
    (list) => printProductList(list),
    (error) => print(error),
  );
}

printProduct(ProductEntity product) {
  print("➤ Id: ${product.id}");
  print("➤ Título: ${product.title}");
  print("➤ Precio: ${product.price}");
  print("➤ Descripción: ${product.description}");
  print("➤ Categoría: ${product.category}");
  print("➤ Imagen: ${product.image}");
  if (product.rating != null) {
    print("➤ Puntuación: ${product.rating!.rate}");
    print("➤ Calificaciones: ${product.rating!.count}");
  }
}

printProductList(List<ProductEntity> products) {
  for (var product in products) {
    printProduct(product);
    print("=========================================");
  }
}

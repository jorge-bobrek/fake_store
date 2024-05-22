import 'package:fake_store/domain/entities/product.dart';
import 'package:fake_store/fake_store.dart' as fake_store;
import 'package:fake_store/data/models/category.dart';

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

printProduct(Product product) {
  print("➤ Id: ${product.id}");
  print("➤ Título: ${product.title}");
  print("➤ Precio: ${product.price}");
  print("➤ Descripción: ${product.description}");
  print("➤ Categoría: ${product.category}");
  print("➤ Imagen: ${product.image}");
  print("➤ Puntuación: ${product.rating.rate}");
  print("➤ Calificaciones: ${product.rating.count}");
}

printProductList(List<Product> products) {
  for (var product in products) {
    printProduct(product);
    print("=========================================");
  }
}

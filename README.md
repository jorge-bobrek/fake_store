
# Fake Store

Un proyecto simple que consume los servicios del [Fake Store API](https://fakestoreapi.com/).

Actualmente el proyecto consume los siguientes 3 servicios del API:

#### GetProduct: 
Retorna la información de un producto individual consultándolo por medio del **id** del producto.

```
╔══════════════════════════════╗
║ Producto #7:                 ║
╚══════════════════════════════╝
➤ Id: 7
➤ Título: White Gold Plated Princess
➤ Precio: 9.99
➤ Descripción: Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine's Day...
➤ Categoría: Category.jewelery
➤ Imagen: https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg
➤ Puntuación: 3.0
➤ Calificaciones: 400
```

#### GetProductsList: 
Retorna la información de todos los productos disponibles en el API.
```
╔══════════════════════════════╗
║ Todos los productos:         ║
╚══════════════════════════════╝
➤ Id: 1
➤ Título: Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops
➤ Precio: 109.95
➤ Descripción: Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday
➤ Categoría: Category.mensClothing
➤ Imagen: https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg
➤ Puntuación: 3.9
➤ Calificaciones: 120
=========================================
➤ Id: 2
➤ Título: Mens Casual Premium Slim Fit T-Shirts 
➤ Precio: 22.3
➤ Descripción: Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.
➤ Categoría: Category.mensClothing
➤ Imagen: https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg
➤ Puntuación: 4.1
➤ Calificaciones: 259
=========================================
➤ Id: 3
. . .
```

#### GetProductsInCategory: 
Retorna la información de todos los productos ubicados en la **cateogría** especificada.
```
╔══════════════════════════════╗
║ Productos tipo electronicos: ║
╚══════════════════════════════╝
➤ Id: 9
➤ Título: WD 2TB Elements Portable External Hard Drive - USB 3.0 
➤ Precio: 64.0
➤ Descripción: USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system
➤ Categoría: Category.electronics
➤ Imagen: https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg
➤ Puntuación: 3.3
➤ Calificaciones: 203
=========================================
➤ Id: 10
➤ Título: SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s
➤ Precio: 109.0
➤ Descripción: Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)
➤ Categoría: Category.electronics
➤ Imagen: https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg
➤ Puntuación: 2.9
➤ Calificaciones: 470
=========================================
➤ Id: 11
. . .
```
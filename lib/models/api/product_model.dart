import 'dart:convert';

class Product {
  final String productName;
  final List<String> images;
  final String productType;
  final String description;
  final int availableQty;
  final String sku;
  final int price;
  final List<String> size;

  Product({
    required this.productName,
    required this.productType,
    required this.images,
    required this.description,
    required this.availableQty,
    required this.sku,
    required this.price,
    required this.size,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productName: json["productName"],
      productType: json["productType"],
      images: parseStringArray(json['images']),
      description: json['description'],
      availableQty: json["availableQty"],
      sku: json['sku'],
      price: json['price'],
      size: parseStringArray(json['size']),
    );
  }

  static List<String> parseStringArray(imagesJson) {
    var list = imagesJson as List;
    List<String> imageList = list.map((e) => e.toString()).toList();
    return imageList;
  }
}

class ProductResponse {
  List<Product> productList;

  ProductResponse({
    required this.productList,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return ProductResponse(productList: parseProducts(json['data']));
  }

  static List<Product> parseProducts(productsJson) {
    var list = productsJson as List;
    List<Product> productList =
        list.map((product) => Product.fromJson(product)).toList();
    return productList;
  }
}

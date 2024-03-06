import 'package:flutter_artshop/data/models/seller_model.dart';

class ProductModel {
  ProductModel(
      {required this.owner,
      required this.url,
      required this.name,
      required this.price,
      required this.description});

  final SellerModel owner;
  final String description;
  final String name;
  final int price;
  final String url;

  // static generateProducs() {
  //   // final products = List.generate(10,
  //   //     (index) => const ProductModel(url: "images/beauty.jpg", name: "beauty"),
  //   //     growable: true);

  //   return products;
  // }
}

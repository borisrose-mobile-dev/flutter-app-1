import 'package:flutter_artshop/data/data_sources/local_sources/local_products_source.dart';
import 'package:flutter_artshop/data/models/product_model.dart';

class LocalProductsService {
  static List<ProductModel> fetchLocalProducts() {
    return LocalProductsSource.products;
  }
}

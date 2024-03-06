import 'package:flutter/material.dart';
import 'package:flutter_artshop/data/models/product_model.dart';
import 'package:flutter_artshop/screens/landing_route.dart';
import 'package:flutter_artshop/services/local_sources_services/local_products_service.dart';
import 'package:flutter_artshop/widgets/my_list_view_builder.dart';

class ProductsRoute extends StatelessWidget {
  ProductsRoute({super.key});

  static String name = "landing";
  final List<ProductModel> products = LocalProductsService.fetchLocalProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.palette,
              color: Colors.amber,
            ),
            onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingRoute())),
                }),
        title: const Text(
          'Products Page',
          textDirection: TextDirection.ltr,
        ),
      ),
      body: MyListViewBuilder(list: products),
    );
  }
}

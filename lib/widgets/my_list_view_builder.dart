import 'package:flutter/material.dart';
import 'package:flutter_artshop/data/models/product_model.dart';
import 'package:flutter_artshop/screens/single_product_route.dart';

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({required this.list, super.key});

  final List<ProductModel> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index].name),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SingleProductRoute(product: list[index])));
            },
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_artshop/screens/landing_route.dart';
import 'package:flutter_artshop/screens/products_route.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  static String name = "landing";

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
                          builder: (context) => const LandingRoute()))
                }),
        title: const Text(
          'Home Page',
          textDirection: TextDirection.ltr,
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductsRoute()))
                  },
              icon: const Icon(
                Icons.brush,
                color: Colors.black,
                semanticLabel: 'products',
              ))
        ],
      ),
    );
  }
}

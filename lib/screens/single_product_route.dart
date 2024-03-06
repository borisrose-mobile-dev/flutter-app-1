import 'package:flutter/material.dart';
import 'package:flutter_artshop/data/models/product_model.dart';
import 'package:flutter_artshop/screens/login_route.dart';

class SingleProductRoute extends StatelessWidget {
  const SingleProductRoute({required this.product, super.key});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.palette,
              color: Colors.amber,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          product.name.toUpperCase(),
          textDirection: TextDirection.ltr,
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginRoute()))
                  },
              icon: const Icon(
                Icons.login,
                textDirection: TextDirection.ltr,
                semanticLabel: 'login',
              ))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(10),
        //padding: const EdgeInsets.all(10),
        // width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        height: 500,
        width: 500,
        decoration: BoxDecoration(
            //border: Border.all(color: Colors.black),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(10, 0, 0, 0),
                blurStyle: BlurStyle.solid,
              )
            ],
            borderRadius: BorderRadius.circular(25)),
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          SizedBox(
            height: 400,
            width: 500,
            child: Image.network(
              product.url,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(child: Center(child: Text(product.name.toUpperCase())))
        ]),
      ),
    );
  }
}

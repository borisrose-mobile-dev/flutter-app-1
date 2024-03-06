import 'package:flutter_artshop/data/models/product_model.dart';
import 'package:flutter_artshop/data/models/seller_model.dart';

class LocalProductsSource {
  static List<ProductModel> products = [
    ProductModel(
        url:
            "https://cdn.pixabay.com/photo/2024/01/23/17/45/woman-8527930_1280.jpg",
        name: "Woman musing on stars",
        price: 2000,
        owner: SellerModel(
            email: "bianca@vandijk.com",
            firstname: "Bianca",
            lastname: "VanDijk",
            role: "seller"),
        description: "Woman looking at the stars, wishing to be one"),
    ProductModel(
        owner: SellerModel(
            email: "bianca@vandijk.com",
            firstname: "Bianca",
            lastname: "VanDijk",
            role: "seller"),
        url:
            "https://cdn.pixabay.com/photo/2024/01/19/21/22/woman-8519926_960_720.jpg",
        name: "Black Woman with beautiful ways",
        price: 3000,
        description: "Black Woman with such a beautiful face"),
    ProductModel(
        owner: SellerModel(
            email: "bianca@vandijk.com",
            firstname: "Bianca",
            lastname: "VanDijk",
            role: "seller"),
        url:
            "https://cdn.pixabay.com/photo/2024/01/10/20/43/bicycle-8500329_1280.jpg",
        name: "The Bicycle I never saw",
        price: 3000,
        description: "The Bicycle I want to ride")
  ];
}




  
    //   {
    //     "url":
    //         "https://cdn.pixabay.com/photo/2024/01/05/21/26/plant-8490174_1280.jpg",
    //     "name": "The plan I never saw",
    //     "price": 2000,
    //     "owner": {
    //       "firstname": "Bianca",
    //       "lastname": "VanDijk",
    //       "email": " bianca@vandijk.com",
    //       "role": "seller"
    //     },
    //     "description": "Is such a plant real ?"
    //   },
    //   {
    //     "url":
    //         "https://cdn.pixabay.com/photo/2023/11/17/19/53/woman-8394961_1280.jpg",
    //     "name": "The Woman on the Swing",
    //     "price": 2000,
    //     "owner": {
    //       "firstname": "Bianca",
    //       "lastname": "VanDijk",
    //       "email": " bianca@vandijk.com",
    //       "role": "seller"
    //     },
    //     "description": "Is such a beauty real ?"
    //   },
    // ];
import 'package:flutter_artshop/data/models/user_modle.dart';

class SellerModel extends User {
  SellerModel(
      {super.firstname,
      super.lastname,
      required super.email,
      required super.role});
}

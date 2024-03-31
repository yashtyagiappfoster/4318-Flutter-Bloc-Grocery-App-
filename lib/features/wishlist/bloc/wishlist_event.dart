import 'package:flutter/material.dart';
import 'package:flutter_blocs/features/home/models/home_product_data_model.dart';

@immutable
abstract class WishlistEvent {}

class WishlistInitialEvent extends WishlistEvent {}

class WishlistRemoveFromWishlistEvent extends WishlistEvent {
  final ProductDataModel productDataModel;
  WishlistRemoveFromWishlistEvent({required this.productDataModel});
}

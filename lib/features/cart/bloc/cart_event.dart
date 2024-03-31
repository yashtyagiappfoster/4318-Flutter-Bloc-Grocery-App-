import 'package:flutter/material.dart';
import 'package:flutter_blocs/features/home/models/home_product_data_model.dart';

@immutable
abstract class CartEvent {}

class CartInitialEvent extends CartEvent {}

class CartRemoveFromCartEvent extends CartEvent {
  final ProductDataModel productDataModel;
  CartRemoveFromCartEvent({required this.productDataModel});
}

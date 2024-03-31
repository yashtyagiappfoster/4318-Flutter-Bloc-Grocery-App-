import 'package:flutter/material.dart';
import 'package:flutter_blocs/features/cart/bloc/cart_bloc.dart';
import 'package:flutter_blocs/features/cart/bloc/cart_event.dart';
import 'package:flutter_blocs/features/home/models/home_product_data_model.dart';

class CartTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final CartBloc cartBloc;
  const CartTileWidget(
      {super.key, required this.productDataModel, required this.cartBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width - 10,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(
                  productDataModel.imageUrl,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            productDataModel.name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(productDataModel.description),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ ${productDataModel.price}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                    tooltip: 'Add to Wishlist',
                  ),
                  IconButton(
                    onPressed: () {
                      cartBloc.add(CartRemoveFromCartEvent(
                          productDataModel: productDataModel));
                    },
                    icon: const Icon(Icons.shopping_bag),
                    tooltip: 'Remove From Cart',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

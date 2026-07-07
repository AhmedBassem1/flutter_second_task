import 'package:flutter/material.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import 'product_card_details.dart';
import 'product_card_image.dart';

class ProductCardContent extends StatelessWidget {
  const ProductCardContent({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 3, child:  ProductCardImage(productModel: productModel,)),
        Expanded(flex: 2, child:  ProductCardDetails(productModel: productModel,)),
      ],
    );
  }
}

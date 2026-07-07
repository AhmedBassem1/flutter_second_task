import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_radius.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import 'product_name_and_category.dart';
import 'product_price_and_rating.dart';

class ProductCardDetails extends StatelessWidget {
  const ProductCardDetails({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppRadius.s10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProductNameAndCategory(productModel: productModel),
          ProductPriceAndRating(productModel: productModel),
        ],
      ),
    );
  }
}

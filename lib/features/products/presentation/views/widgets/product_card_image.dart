import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_radius.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import 'favorite_product.dart';

class ProductCardImage extends StatelessWidget {
  const ProductCardImage({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(productModel.images),
                fit: BoxFit.cover,
              ),
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppRadius.r16),
                topRight: Radius.circular(AppRadius.r16),
              ),
            ),
          ),
        ),
        Positioned(top: AppSizes.s10, left: AppSizes.s10, child: const FavoriteProduct()),
      ],
    );
  }
}

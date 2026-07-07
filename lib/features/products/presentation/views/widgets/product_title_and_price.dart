import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

class ProductTitleAndPrice extends StatelessWidget {
  const ProductTitleAndPrice({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            productModel.title,
            maxLines: 2,
            style: AppTextStyles.s20w600,
          ),
        ),
        Text('\$${productModel.price}', style: AppTextStyles.s20w600),
      ],
    );
  }
}

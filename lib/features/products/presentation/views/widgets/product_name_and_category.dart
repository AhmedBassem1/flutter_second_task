import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

class ProductNameAndCategory extends StatelessWidget {
  const ProductNameAndCategory({super.key, required this.productModel});

  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(productModel.category, style: AppTextStyles.s12w400),
        Text(
          productModel.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.s14w500,
        ),
      ],
    );
  }
}

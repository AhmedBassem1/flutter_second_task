import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({super.key, required this.productModel});
final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Text(
      productModel.category,
      style: AppTextStyles.s15w500,
    );
  }
}

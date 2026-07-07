import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import 'product_category.dart';
import 'product_title_and_price.dart';
import 'product_details.dart';

class ProductContentSection extends StatelessWidget {
  const ProductContentSection({super.key, required this.productModel});
final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductCategory(productModel: productModel,),
        SizedBox(height: AppSizes.s12h),
        ProductTitleAndPrice(productModel: productModel,),
        SizedBox(height: AppSizes.s32h),
        ProductDetails(productModel: productModel,),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';

import 'product_category.dart';
import 'product_title_and_price.dart';
import 'product_details.dart';

class ProductContentSection extends StatelessWidget {
  const ProductContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductCategory(),
        SizedBox(height: AppSizes.s12h),
        ProductTitleAndPrice(),
        SizedBox(height: AppSizes.s32h),
        ProductDetails(),
      ],
    );
  }
}

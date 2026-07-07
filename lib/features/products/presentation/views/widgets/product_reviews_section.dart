import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import 'product_reviews_header.dart';
import 'review_grid_view.dart';

class ProductReviewsSection extends StatelessWidget {
  const ProductReviewsSection({super.key, required this.productModel});
final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductReviewsHeader(productModel: productModel,),
        SizedBox(height: AppSizes.s16h),
        ReviewGridView(productModel: productModel,),
      ],
    );
  }
}
